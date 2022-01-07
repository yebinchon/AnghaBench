
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* avctx; } ;
struct TYPE_4__ {void* colorspace; void* color_trc; void* color_primaries; int color_range; } ;
typedef TYPE_2__ MpegEncContext ;
typedef int GetBitContext ;


 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int VOT_STILL_TEXTURE_ID ;
 int VOT_VIDEO_ID ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int mpeg4_decode_visual_object(MpegEncContext *s, GetBitContext *gb)
{
    int visual_object_type;
    int is_visual_object_identifier = get_bits1(gb);

    if (is_visual_object_identifier) {
        skip_bits(gb, 4+3);
    }
    visual_object_type = get_bits(gb, 4);

    if (visual_object_type == VOT_VIDEO_ID ||
        visual_object_type == VOT_STILL_TEXTURE_ID) {
        int video_signal_type = get_bits1(gb);
        if (video_signal_type) {
            int video_range, color_description;
            skip_bits(gb, 3);
            video_range = get_bits1(gb);
            color_description = get_bits1(gb);

            s->avctx->color_range = video_range ? AVCOL_RANGE_JPEG : AVCOL_RANGE_MPEG;

            if (color_description) {
                s->avctx->color_primaries = get_bits(gb, 8);
                s->avctx->color_trc = get_bits(gb, 8);
                s->avctx->colorspace = get_bits(gb, 8);
            }
        }
    }

    return 0;
}

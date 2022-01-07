
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avctx; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef int GetBitContext ;


 int AVERROR_PATCHWELCOME ;
 int VOT_VIDEO_ID ;
 int avpriv_request_sample (int ,char*,int) ;
 int extension_and_user_data (TYPE_1__*,int *,int) ;
 int get_bits (int *,int) ;
 int next_start_code_studio (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_studiovisualobject(Mpeg4DecContext *ctx, GetBitContext *gb)
{
    MpegEncContext *s = &ctx->m;
    int visual_object_type;

        skip_bits(gb, 4);
        visual_object_type = get_bits(gb, 4);
        if (visual_object_type != VOT_VIDEO_ID) {
            avpriv_request_sample(s->avctx, "VO type %u", visual_object_type);
            return AVERROR_PATCHWELCOME;
        }

        next_start_code_studio(gb);
        extension_and_user_data(s, gb, 1);

    return 0;
}

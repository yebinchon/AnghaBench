
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int debug; void* colorspace; void* color_trc; void* color_primaries; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_5__* avctx; int gb; } ;
struct TYPE_8__ {TYPE_1__ pan_scan; TYPE_2__ mpeg_enc_ctx; } ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ Mpeg1Context ;


 int AV_LOG_DEBUG ;
 int FF_DEBUG_PICT_INFO ;
 int av_log (TYPE_5__*,int ,char*,int,int) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void mpeg_decode_sequence_display_extension(Mpeg1Context *s1)
{
    MpegEncContext *s = &s1->mpeg_enc_ctx;
    int color_description, w, h;

    skip_bits(&s->gb, 3);
    color_description = get_bits1(&s->gb);
    if (color_description) {
        s->avctx->color_primaries = get_bits(&s->gb, 8);
        s->avctx->color_trc = get_bits(&s->gb, 8);
        s->avctx->colorspace = get_bits(&s->gb, 8);
    }
    w = get_bits(&s->gb, 14);
    skip_bits(&s->gb, 1);
    h = get_bits(&s->gb, 14);


    s1->pan_scan.width = 16 * w;
    s1->pan_scan.height = 16 * h;

    if (s->avctx->debug & FF_DEBUG_PICT_INFO)
        av_log(s->avctx, AV_LOG_DEBUG, "sde w:%d, h:%d\n", w, h);
}

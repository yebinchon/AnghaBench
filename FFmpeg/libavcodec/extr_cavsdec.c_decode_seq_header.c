
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int framerate; } ;
struct TYPE_7__ {int width; int height; int mb_width; int mb_height; int top_qp; TYPE_2__* avctx; int gb; int low_delay; void* aspect_ratio; void* level; void* profile; } ;
typedef TYPE_1__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int avpriv_report_missing_feature (TYPE_2__*,char*) ;
 int ff_cavs_init_top_lines (TYPE_1__*) ;
 int * ff_mpeg12_frame_rate_tab ;
 int ff_set_dimensions (TYPE_2__*,int,int) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_seq_header(AVSContext *h)
{
    int frame_rate_code;
    int width, height;
    int ret;

    h->profile = get_bits(&h->gb, 8);
    h->level = get_bits(&h->gb, 8);
    skip_bits1(&h->gb);

    width = get_bits(&h->gb, 14);
    height = get_bits(&h->gb, 14);
    if ((h->width || h->height) && (h->width != width || h->height != height)) {
        avpriv_report_missing_feature(h->avctx,
                                      "Width/height changing in CAVS");
        return AVERROR_PATCHWELCOME;
    }
    if (width <= 0 || height <= 0) {
        av_log(h->avctx, AV_LOG_ERROR, "Dimensions invalid\n");
        return AVERROR_INVALIDDATA;
    }
    skip_bits(&h->gb, 2);
    skip_bits(&h->gb, 3);
    h->aspect_ratio = get_bits(&h->gb, 4);
    frame_rate_code = get_bits(&h->gb, 4);
    if (frame_rate_code == 0 || frame_rate_code > 13) {
        av_log(h->avctx, AV_LOG_WARNING,
               "frame_rate_code %d is invalid\n", frame_rate_code);
        frame_rate_code = 1;
    }

    skip_bits(&h->gb, 18);
    skip_bits1(&h->gb);
    skip_bits(&h->gb, 12);
    h->low_delay = get_bits1(&h->gb);

    ret = ff_set_dimensions(h->avctx, width, height);
    if (ret < 0)
        return ret;

    h->width = width;
    h->height = height;
    h->mb_width = (h->width + 15) >> 4;
    h->mb_height = (h->height + 15) >> 4;
    h->avctx->framerate = ff_mpeg12_frame_rate_tab[frame_rate_code];
    if (!h->top_qp)
        return ff_cavs_init_top_lines(h);
    return 0;
}

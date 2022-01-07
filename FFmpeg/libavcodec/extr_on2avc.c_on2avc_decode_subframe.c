
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int channels; } ;
struct TYPE_11__ {size_t prev_window_type; size_t window_type; int num_windows; int is_long; int* grouping; TYPE_9__* avctx; scalar_t__ ms_present; TYPE_1__* modes; int num_bands; int band_start; } ;
struct TYPE_10__ {int num_windows; int num_bands; int band_start; } ;
typedef TYPE_2__ On2AVCContext ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 size_t WINDOW_TYPE_8SHORT ;
 size_t WINDOW_TYPE_EXT4 ;
 int av_log (TYPE_9__*,int ,char*) ;
 size_t get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int init_get_bits8 (int *,int const*,int) ;
 int on2avc_apply_ms (TYPE_2__*) ;
 int on2avc_read_channel_data (TYPE_2__*,int *,int) ;
 int on2avc_read_ms_info (TYPE_2__*,int *) ;
 int on2avc_reconstruct_channel (TYPE_2__*,int,int *,int) ;
 int on2avc_reconstruct_channel_ext (TYPE_2__*,int *,int) ;

__attribute__((used)) static int on2avc_decode_subframe(On2AVCContext *c, const uint8_t *buf,
                                  int buf_size, AVFrame *dst, int offset)
{
    GetBitContext gb;
    int i, ret;

    if ((ret = init_get_bits8(&gb, buf, buf_size)) < 0)
        return ret;

    if (get_bits1(&gb)) {
        av_log(c->avctx, AV_LOG_ERROR, "enh bit set\n");
        return AVERROR_INVALIDDATA;
    }
    c->prev_window_type = c->window_type;
    c->window_type = get_bits(&gb, 3);

    c->band_start = c->modes[c->window_type].band_start;
    c->num_windows = c->modes[c->window_type].num_windows;
    c->num_bands = c->modes[c->window_type].num_bands;
    c->is_long = (c->window_type != WINDOW_TYPE_8SHORT);

    c->grouping[0] = 1;
    for (i = 1; i < c->num_windows; i++)
        c->grouping[i] = !get_bits1(&gb);

    on2avc_read_ms_info(c, &gb);
    for (i = 0; i < c->avctx->channels; i++)
        if ((ret = on2avc_read_channel_data(c, &gb, i)) < 0)
            return AVERROR_INVALIDDATA;
    if (c->avctx->channels == 2 && c->ms_present)
        on2avc_apply_ms(c);
    if (c->window_type < WINDOW_TYPE_EXT4) {
        for (i = 0; i < c->avctx->channels; i++)
            on2avc_reconstruct_channel(c, i, dst, offset);
    } else {
        on2avc_reconstruct_channel_ext(c, dst, offset);
    }

    return 0;
}

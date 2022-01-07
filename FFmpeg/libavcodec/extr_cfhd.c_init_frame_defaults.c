
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bpc; int channel_cnt; int lowpass_precision; int quantisation; int wavelet_depth; int pshift; scalar_t__ progressive; scalar_t__ difference_coding; scalar_t__ codebook; scalar_t__ channel_num; int subband_cnt; scalar_t__ cropped_height; scalar_t__ coded_height; scalar_t__ coded_width; } ;
typedef TYPE_1__ CFHDContext ;


 int SUBBAND_COUNT ;
 int init_peak_table_defaults (TYPE_1__*) ;
 int init_plane_defaults (TYPE_1__*) ;

__attribute__((used)) static void init_frame_defaults(CFHDContext *s)
{
    s->coded_width = 0;
    s->coded_height = 0;
    s->cropped_height = 0;
    s->bpc = 10;
    s->channel_cnt = 4;
    s->subband_cnt = SUBBAND_COUNT;
    s->channel_num = 0;
    s->lowpass_precision = 16;
    s->quantisation = 1;
    s->wavelet_depth = 3;
    s->pshift = 1;
    s->codebook = 0;
    s->difference_coding = 0;
    s->progressive = 0;
    init_plane_defaults(s);
    init_peak_table_defaults(s);
}

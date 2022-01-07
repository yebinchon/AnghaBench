
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int block_type; int long_end; int short_start; scalar_t__ switch_point; } ;
struct TYPE_5__ {int sample_rate_index; int avctx; } ;
typedef TYPE_1__ MPADecodeContext ;
typedef TYPE_2__ GranuleDef ;


 int avpriv_request_sample (int ,char*) ;

__attribute__((used)) static void compute_band_indexes(MPADecodeContext *s, GranuleDef *g)
{
    if (g->block_type == 2) {
        if (g->switch_point) {
            if(s->sample_rate_index == 8)
                avpriv_request_sample(s->avctx, "switch point in 8khz");



            if (s->sample_rate_index <= 2)
                g->long_end = 8;
            else
                g->long_end = 6;

            g->short_start = 3;
        } else {
            g->long_end = 0;
            g->short_start = 0;
        }
    } else {
        g->short_start = 13;
        g->long_end = 22;
    }
}

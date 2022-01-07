
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pscrn; int fapprox; int expfunc; int dot_prod; int extract; int wae5; int compute_network0; int readpixels; int process_line0; int evalfunc_1; int evalfunc_0; int copy_pad; } ;
typedef TYPE_1__ NNEDIContext ;


 int byte2word48 ;
 int byte2word64 ;
 int compute_network0 ;
 int compute_network0_i16 ;
 int compute_network0new ;
 int copy_pad ;
 int dot_prod ;
 int dot_prods ;
 int e2_m16 ;
 int evalfunc_0 ;
 int evalfunc_1 ;
 int extract_m8 ;
 int extract_m8_i16 ;
 int pixel2float48 ;
 int process_line0 ;
 int weighted_avg_elliott_mul5_m16 ;

__attribute__((used)) static void select_functions(NNEDIContext *s)
{
    s->copy_pad = copy_pad;
    s->evalfunc_0 = evalfunc_0;
    s->evalfunc_1 = evalfunc_1;


    s->process_line0 = process_line0;

    if (s->pscrn < 2) {
        if (s->fapprox & 1) {
            s->readpixels = byte2word48;
            s->compute_network0 = compute_network0_i16;
        } else {
            s->readpixels = pixel2float48;
            s->compute_network0 = compute_network0;
        }
    } else {

        s->readpixels = byte2word64;
        s->compute_network0 = compute_network0new;
    }


    s->wae5 = weighted_avg_elliott_mul5_m16;

    if (s->fapprox & 2) {
        s->extract = extract_m8_i16;
        s->dot_prod = dot_prods;
    } else {
        s->extract = extract_m8;
        s->dot_prod = dot_prod;
    }

    s->expfunc = e2_m16;
}

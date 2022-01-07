
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_decoder ;


 int mpc_decoder_scale_output (int *,double) ;

void
mpc_decoder_init_quant(mpc_decoder *d, double scale_factor)
{
    mpc_decoder_scale_output(d, scale_factor);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_uint8_t ;
typedef int mpc_int32_t ;
typedef int mpc_decoder ;


 int MPC_FIXED_POINT_SHIFT ;
 int SET_SCF (int,double) ;

void
mpc_decoder_scale_output(mpc_decoder *d, double factor)
{
    mpc_int32_t n; double f1, f2;


    factor *= 1.0 / (double) (1<<(MPC_FIXED_POINT_SHIFT-1));



    f1 = f2 = factor;



    SET_SCF(1,factor);

    f1 *= 0.83298066476582673961;
    f2 *= 1/0.83298066476582673961;

    for ( n = 1; n <= 128; n++ ) {
        SET_SCF((mpc_uint8_t)(1+n),f1);
        SET_SCF((mpc_uint8_t)(1-n),f2);
        f1 *= 0.83298066476582673961;
        f2 *= 1/0.83298066476582673961;
    }
}

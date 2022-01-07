
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_int_t ;
struct TYPE_3__ {int * Y_R; int * V_R; int * Y_L; int * V_L; } ;
typedef TYPE_1__ mpc_decoder ;
typedef int MPC_SAMPLE_FORMAT ;


 size_t MPC_V_MEM ;
 int memmove (int *,int *,int) ;
 int mpc_synthese_filter_float_internal (int *,int *,int ,int) ;

void
mpc_decoder_synthese_filter_float(mpc_decoder* p_dec, MPC_SAMPLE_FORMAT* p_out, mpc_int_t channels)
{

    memmove(&p_dec->V_L[MPC_V_MEM], p_dec->V_L, 960 * sizeof *p_dec->V_L);
 mpc_synthese_filter_float_internal(p_out, &p_dec->V_L[MPC_V_MEM], p_dec->Y_L[0], channels);


 if (channels > 1) {
  memmove(&p_dec->V_R[MPC_V_MEM], p_dec->V_R, 960 * sizeof *p_dec->V_R);
  mpc_synthese_filter_float_internal(p_out + 1, &p_dec->V_R[MPC_V_MEM], p_dec->Y_R[0], channels);
 }
}

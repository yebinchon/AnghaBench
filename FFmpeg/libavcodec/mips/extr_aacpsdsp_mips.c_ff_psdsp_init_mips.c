
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * stereo_interpolate; int decorrelate; int mul_pair_single; int add_squares; int hybrid_synthesis_deint; int hybrid_analysis_ileave; } ;
typedef TYPE_1__ PSDSPContext ;


 int ps_add_squares_mips ;
 int ps_decorrelate_mips ;
 int ps_hybrid_analysis_ileave_mips ;
 int ps_hybrid_synthesis_deint_mips ;
 int ps_mul_pair_single_mips ;
 int ps_stereo_interpolate_mips ;

void ff_psdsp_init_mips(PSDSPContext *s)
{
}

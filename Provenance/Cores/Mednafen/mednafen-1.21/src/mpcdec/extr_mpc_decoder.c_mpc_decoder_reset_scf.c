
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SCF_Index_R; int SCF_Index_L; } ;
typedef TYPE_1__ mpc_decoder ;


 int memset (int ,int,int) ;

void mpc_decoder_reset_scf(mpc_decoder * d, int value)
{
 memset(d->SCF_Index_L, value, sizeof d->SCF_Index_L );
 memset(d->SCF_Index_R, value, sizeof d->SCF_Index_R );
}

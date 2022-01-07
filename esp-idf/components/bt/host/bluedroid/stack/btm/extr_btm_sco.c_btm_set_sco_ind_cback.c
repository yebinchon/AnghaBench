
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_SCO_IND_CBACK ;
struct TYPE_3__ {int * app_sco_ind_cb; } ;
struct TYPE_4__ {TYPE_1__ sco_cb; } ;


 TYPE_2__ btm_cb ;

void btm_set_sco_ind_cback( tBTM_SCO_IND_CBACK *sco_ind_cb )
{
    btm_cb.sco_cb.app_sco_ind_cb = sco_ind_cb;
}

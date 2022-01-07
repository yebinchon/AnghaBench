
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inq_active; } ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_SSP_INQUIRY_ACTIVE ;
 TYPE_2__ btm_cb ;

void btm_inq_clear_ssp(void)
{
    btm_cb.btm_inq_vars.inq_active &= ~BTM_SSP_INQUIRY_ACTIVE;
}

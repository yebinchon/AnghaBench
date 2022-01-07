
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int sco_disc_reason; } ;
struct TYPE_4__ {TYPE_1__ sco_cb; } ;


 int BTM_INVALID_SCO_DISC_REASON ;
 TYPE_2__ btm_cb ;

UINT16 BTM_ReadScoDiscReason (void)
{
    UINT16 res = btm_cb.sco_cb.sco_disc_reason;
    btm_cb.sco_cb.sco_disc_reason = BTM_INVALID_SCO_DISC_REASON;
    return (res);
}

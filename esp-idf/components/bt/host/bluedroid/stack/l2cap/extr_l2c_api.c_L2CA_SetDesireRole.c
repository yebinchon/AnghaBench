
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int desire_role; int disallow_switch; } ;


 int FALSE ;
 int HCI_ROLE_MASTER ;
 int HCI_ROLE_SLAVE ;
 int L2CAP_ROLE_ALLOW_SWITCH ;
 int L2CAP_ROLE_CHECK_SWITCH ;
 int L2CAP_ROLE_DISALLOW_SWITCH ;
 int L2CAP_TRACE_API (char*,int,int ) ;
 int TRUE ;
 TYPE_1__ l2cb ;

UINT8 L2CA_SetDesireRole (UINT8 new_role)
{
    L2CAP_TRACE_API ("L2CA_SetDesireRole() new:x%x, disallow_switch:%d",
                     new_role, l2cb.disallow_switch);

    if (L2CAP_ROLE_CHECK_SWITCH != (L2CAP_ROLE_CHECK_SWITCH & new_role)) {

        if (new_role & L2CAP_ROLE_ALLOW_SWITCH) {
            l2cb.disallow_switch = FALSE;
        }
        if (new_role & L2CAP_ROLE_DISALLOW_SWITCH) {
            l2cb.disallow_switch = TRUE;
        }
    }

    if (new_role == HCI_ROLE_MASTER || new_role == HCI_ROLE_SLAVE) {
        l2cb.desire_role = new_role;
    }

    return (l2cb.desire_role);
}

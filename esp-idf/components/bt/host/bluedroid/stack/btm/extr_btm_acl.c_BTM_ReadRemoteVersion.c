
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int lmp_subversion; int manufacturer; int lmp_version; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;

tBTM_STATUS BTM_ReadRemoteVersion (BD_ADDR addr, UINT8 *lmp_version,
                                   UINT16 *manufacturer, UINT16 *lmp_sub_version)
{
    tACL_CONN *p = btm_bda_to_acl(addr, BT_TRANSPORT_BR_EDR);
    BTM_TRACE_DEBUG ("BTM_ReadRemoteVersion\n");
    if (p == ((void*)0)) {
        return (BTM_UNKNOWN_ADDR);
    }

    if (lmp_version) {
        *lmp_version = p->lmp_version;
    }

    if (manufacturer) {
        *manufacturer = p->manufacturer;
    }

    if (lmp_sub_version) {
        *lmp_sub_version = p->lmp_subversion;
    }

    return (BTM_SUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bond_type; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int tBTM_BOND_TYPE ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* btm_find_dev (int ) ;

BOOLEAN btm_set_bond_type_dev(BD_ADDR bd_addr, tBTM_BOND_TYPE bond_type)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev(bd_addr);

    if (p_dev_rec == ((void*)0)) {
        return FALSE;
    }

    p_dev_rec->bond_type = bond_type;
    return TRUE;
}

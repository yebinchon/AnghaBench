
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bond_type; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int tBTM_BOND_TYPE ;
typedef int BD_ADDR ;


 int BOND_TYPE_UNKNOWN ;
 TYPE_1__* btm_find_dev (int ) ;

tBTM_BOND_TYPE btm_get_bond_type_dev(BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev(bd_addr);

    if (p_dev_rec == ((void*)0)) {
        return BOND_TYPE_UNKNOWN;
    }

    return p_dev_rec->bond_type;
}

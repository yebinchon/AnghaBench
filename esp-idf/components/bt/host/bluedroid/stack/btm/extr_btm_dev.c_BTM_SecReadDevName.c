
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sec_bd_name; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BD_ADDR ;


 TYPE_1__* btm_find_dev (int ) ;

char *BTM_SecReadDevName (BD_ADDR bd_addr)
{
    char *p_name = ((void*)0);
    tBTM_SEC_DEV_REC *p_srec;

    if ((p_srec = btm_find_dev(bd_addr)) != ((void*)0)) {
        p_name = (char *)p_srec->sec_bd_name;
    }

    return (p_name);
}

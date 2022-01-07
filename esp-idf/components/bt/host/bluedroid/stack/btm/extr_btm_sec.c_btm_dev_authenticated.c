
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;


 int BTM_SEC_AUTHENTICATED ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN btm_dev_authenticated (tBTM_SEC_DEV_REC *p_dev_rec)
{
    if (p_dev_rec->sec_flags & BTM_SEC_AUTHENTICATED) {
        return (TRUE);
    }
    return (FALSE);
}

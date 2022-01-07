
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sec_state; int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 scalar_t__ BTM_CMD_STARTED ;
 int BTM_RMT_NAME_SEC ;
 int BTM_SEC_STATE_GETTING_NAME ;
 int FALSE ;
 int TRUE ;
 scalar_t__ btm_initiate_rem_name (int ,int *,int ,int ,int *) ;

__attribute__((used)) static BOOLEAN btm_sec_start_get_name (tBTM_SEC_DEV_REC *p_dev_rec)
{
    UINT8 tempstate = p_dev_rec->sec_state;

    p_dev_rec->sec_state = BTM_SEC_STATE_GETTING_NAME;



    if ((btm_initiate_rem_name (p_dev_rec->bd_addr, ((void*)0), BTM_RMT_NAME_SEC,
                                0, ((void*)0))) != BTM_CMD_STARTED) {
        p_dev_rec->sec_state = tempstate;
        return (FALSE);
    }

    return (TRUE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ last_author_service_id; scalar_t__ p_cur_service; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int * BD_ADDR ;


 scalar_t__ BTM_SEC_NO_LAST_SERVICE_ID ;
 int BTM_TRACE_DEBUG (char*,int ,int ,int ,int ,int ,int ) ;
 int BTM_TRACE_WARNING (char*) ;
 TYPE_1__* btm_find_dev (int *) ;

void btm_sec_clr_temp_auth_service (BD_ADDR bda)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    if ((p_dev_rec = btm_find_dev (bda)) == ((void*)0)) {
        BTM_TRACE_WARNING ("btm_sec_clr_temp_auth_service() - no dev CB\n");
        return;
    }


    if (p_dev_rec->last_author_service_id != BTM_SEC_NO_LAST_SERVICE_ID && p_dev_rec->p_cur_service) {
        BTM_TRACE_DEBUG ("btm_sec_clr_auth_service_by_psm [clearing device: %02x:%02x:%02x:%02x:%02x:%02x]\n",
                         bda[0], bda[1], bda[2], bda[3], bda[4], bda[5]);

        p_dev_rec->last_author_service_id = BTM_SEC_NO_LAST_SERVICE_ID;
    }
}

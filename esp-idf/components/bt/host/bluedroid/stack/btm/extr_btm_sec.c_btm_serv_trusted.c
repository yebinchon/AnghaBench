
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int service_id; } ;
typedef TYPE_1__ tBTM_SEC_SERV_REC ;
struct TYPE_6__ {int trusted_mask; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;


 scalar_t__ BTM_SEC_IS_SERVICE_TRUSTED (int ,int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN btm_serv_trusted(tBTM_SEC_DEV_REC *p_dev_rec, tBTM_SEC_SERV_REC *p_serv_rec)
{
    if (BTM_SEC_IS_SERVICE_TRUSTED(p_dev_rec->trusted_mask, p_serv_rec->service_id)) {
        return (TRUE);
    }
    return (FALSE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sec_flags; scalar_t__ hci_handle; scalar_t__ last_author_service_id; int sec_state; scalar_t__ is_originator; int sec_bd_name; int dev_class; int bd_addr; TYPE_1__* p_cur_service; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
struct TYPE_8__ {scalar_t__ (* p_authorize_callback ) (int ,int ,int ,scalar_t__*,scalar_t__,scalar_t__) ;} ;
struct TYPE_10__ {TYPE_2__ api; } ;
struct TYPE_7__ {scalar_t__ service_id; scalar_t__* term_service_name; scalar_t__* orig_service_name; } ;


 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_MODE_UNSUPPORTED ;
 int BTM_SEC_AUTHORIZED ;
 scalar_t__ BTM_SEC_INVALID_HANDLE ;
 int BTM_SEC_NAME_KNOWN ;
 scalar_t__ BTM_SEC_NO_LAST_SERVICE_ID ;
 int BTM_SEC_STATE_AUTHORIZING ;
 int BTM_SEC_STATE_IDLE ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,scalar_t__) ;
 TYPE_6__ btm_cb ;
 int btm_sec_start_get_name (TYPE_3__*) ;
 scalar_t__ stub1 (int ,int ,int ,scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static UINT8 btm_sec_start_authorization (tBTM_SEC_DEV_REC *p_dev_rec)
{
    UINT8 result;
    UINT8 *p_service_name = ((void*)0);
    UINT8 service_id;

    if ((p_dev_rec->sec_flags & BTM_SEC_NAME_KNOWN)
            || (p_dev_rec->hci_handle == BTM_SEC_INVALID_HANDLE)) {
        if (!btm_cb.api.p_authorize_callback) {
            return (BTM_MODE_UNSUPPORTED);
        }

        if (p_dev_rec->p_cur_service) {







            service_id = p_dev_rec->p_cur_service->service_id;
        } else {
            service_id = 0;
        }


        if (p_dev_rec->last_author_service_id == BTM_SEC_NO_LAST_SERVICE_ID
                || p_dev_rec->last_author_service_id != service_id) {
            p_dev_rec->sec_state = BTM_SEC_STATE_AUTHORIZING;
            result = (*btm_cb.api.p_authorize_callback) (p_dev_rec->bd_addr,
                     p_dev_rec->dev_class,
                     p_dev_rec->sec_bd_name,
                     p_service_name,
                     service_id,
                     p_dev_rec->is_originator);
        }

        else {
            BTM_TRACE_DEBUG ("btm_sec_start_authorization: (Ignoring extra Authorization prompt for service %d)\n", service_id);
            return (BTM_SUCCESS);
        }

        if (result == BTM_SUCCESS) {
            p_dev_rec->sec_flags |= BTM_SEC_AUTHORIZED;


            if (!p_dev_rec->is_originator) {
                p_dev_rec->last_author_service_id = service_id;
            }

            p_dev_rec->sec_state = BTM_SEC_STATE_IDLE;
        }
        return (result);
    }
    btm_sec_start_get_name (p_dev_rec);
    return (BTM_CMD_STARTED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_14__ {TYPE_1__ member_1; int member_0; } ;
typedef TYPE_2__ tBT_UUID ;
struct TYPE_15__ {int len; int * p_value; } ;
typedef TYPE_3__ tBTA_GATT_UNFMT ;
struct TYPE_16__ {int * characteristics; int uuid; } ;
typedef TYPE_4__ tBTA_GATTC_SERVICE ;
struct TYPE_17__ {int * p_srvc_cache; } ;
typedef TYPE_5__ tBTA_GATTC_SERV ;
typedef int tBTA_GATTC_FIND_SERVICE_CB ;
struct TYPE_18__ {int handle; int uuid; } ;
typedef TYPE_6__ tBTA_GATTC_DESCRIPTOR ;
struct TYPE_19__ {scalar_t__ write_remote_svc_change_ccc_done; int svc_change_descr_handle; } ;
typedef TYPE_7__ tBTA_GATTC_CONN ;
struct TYPE_20__ {int * descriptors; int uuid; } ;
typedef TYPE_8__ tBTA_GATTC_CHARACTERISTIC ;
typedef int list_t ;
typedef int list_node_t ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_GATTC_TYPE_WRITE ;
 int BTA_GATTC_WriteCharDescr (int ,int ,int ,TYPE_3__*,int ) ;
 int BTA_GATT_AUTH_REQ_NONE ;
 scalar_t__ FALSE ;
 int GATT_CLT_CONFIG_INDICATION ;
 int GATT_UUID_CHAR_CLIENT_CONFIG ;
 int GATT_UUID_GATT_SRV_CHGD ;
 int LEN_UUID_16 ;
 int SERVICE_CHANGE_CACHE_NOT_FOUND ;
 int SERVICE_CHANGE_CCC_NOT_FOUND ;
 int SERVICE_CHANGE_CCC_WRITTEN_SUCCESS ;
 int SERVICE_CHANGE_CHAR_NOT_FOUND ;
 int SERVICE_CHANGE_SERVICE_NOT_FOUND ;
 scalar_t__ TRUE ;
 int UUID_SERVCLASS_GATT_SERVER ;
 TYPE_7__* bta_gattc_conn_find_alloc (int ) ;
 TYPE_5__* bta_gattc_find_srcb (int ) ;
 scalar_t__ bta_gattc_uuid_compare (TYPE_2__*,int *,scalar_t__) ;
 int * list_begin (int *) ;
 int * list_end (int *) ;
 int * list_next (int *) ;
 void* list_node (int *) ;

tBTA_GATTC_FIND_SERVICE_CB bta_gattc_register_service_change_notify(UINT16 conn_id, BD_ADDR remote_bda)
{
    tBTA_GATTC_SERV *p_srcb = ((void*)0);
    list_t *p_cache = ((void*)0);
    tBTA_GATTC_SERVICE *p_service = ((void*)0);
    tBTA_GATTC_CHARACTERISTIC *p_char = ((void*)0);
    tBTA_GATTC_DESCRIPTOR *p_desc = ((void*)0);
    tBTA_GATTC_FIND_SERVICE_CB result;
    BOOLEAN gatt_cache_found = FALSE;
    BOOLEAN gatt_service_found = FALSE;
    BOOLEAN gatt_service_change_found = FALSE;
    BOOLEAN gatt_ccc_found = FALSE;

    tBT_UUID gatt_service_uuid = {LEN_UUID_16, {UUID_SERVCLASS_GATT_SERVER}};
    tBT_UUID gatt_service_change_uuid = {LEN_UUID_16, {GATT_UUID_GATT_SRV_CHGD}};
    tBT_UUID gatt_ccc_uuid = {LEN_UUID_16, {GATT_UUID_CHAR_CLIENT_CONFIG}};
    tBTA_GATTC_CONN *p_conn = bta_gattc_conn_find_alloc(remote_bda);
    if(p_conn && p_conn->write_remote_svc_change_ccc_done) {
        return SERVICE_CHANGE_CCC_WRITTEN_SUCCESS;
    }

    p_srcb = bta_gattc_find_srcb(remote_bda);
    if ((p_srcb != ((void*)0)) && (p_srcb->p_srvc_cache != ((void*)0))) {
        p_cache = p_srcb->p_srvc_cache;
        gatt_cache_found = TRUE;
    }
    else {
        result = SERVICE_CHANGE_CACHE_NOT_FOUND;
    }

    if (gatt_cache_found == TRUE) {
        for (list_node_t *sn = list_begin(p_cache);
             sn != list_end(p_cache); sn = list_next(sn)) {
            p_service = list_node(sn);
            if (bta_gattc_uuid_compare(&gatt_service_uuid, &p_service->uuid, TRUE)) {
                gatt_service_found = TRUE;
                break;
            }
        }
    }
    else {
        result = SERVICE_CHANGE_CACHE_NOT_FOUND;
    }


    if (gatt_service_found == TRUE) {
        if (p_service->characteristics) {
            for (list_node_t *cn = list_begin(p_service->characteristics);
                 cn != list_end(p_service->characteristics); cn = list_next(cn)) {
                p_char = list_node(cn);
                if (bta_gattc_uuid_compare(&gatt_service_change_uuid, &p_char->uuid, TRUE)) {
                    gatt_service_change_found = TRUE;
                    break;
                }
            }
        }
    }
    else if (gatt_cache_found == TRUE) {

        result = SERVICE_CHANGE_SERVICE_NOT_FOUND;
    }

    if (gatt_service_change_found == TRUE) {
        if (p_char->descriptors) {
            for (list_node_t *dn = list_begin(p_char->descriptors);
                 dn != list_end(p_char->descriptors); dn = list_next(dn)) {
                p_desc = list_node(dn);
                if (bta_gattc_uuid_compare(&gatt_ccc_uuid, &p_desc->uuid, TRUE)) {
                    gatt_ccc_found = TRUE;
                    break;
                }
            }
        }
    }
    else if (gatt_service_found ==TRUE) {





        result = SERVICE_CHANGE_CHAR_NOT_FOUND;
    }

    if (gatt_ccc_found == TRUE){
        if (p_conn) {
            p_conn->svc_change_descr_handle = p_desc->handle;
            p_conn->write_remote_svc_change_ccc_done = TRUE;
        }
        result = SERVICE_CHANGE_CCC_WRITTEN_SUCCESS;
        uint16_t indicate_value = GATT_CLT_CONFIG_INDICATION;
        tBTA_GATT_UNFMT indicate_v;
        indicate_v.len = 2;
        indicate_v.p_value = (uint8_t *)&indicate_value;
        BTA_GATTC_WriteCharDescr (conn_id, p_desc->handle, BTA_GATTC_TYPE_WRITE, &indicate_v, BTA_GATT_AUTH_REQ_NONE);

    }
    else if (gatt_service_change_found == TRUE) {





        result = SERVICE_CHANGE_CCC_NOT_FOUND;
    }

    return result;
}

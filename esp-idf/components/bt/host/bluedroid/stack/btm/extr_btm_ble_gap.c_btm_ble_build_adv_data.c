
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_20__ {int len; int * p_val; int adv_type; } ;
typedef TYPE_13__ tBTM_BLE_PROP_ELEM ;
typedef int tBTM_BLE_AD_MASK ;
struct TYPE_18__ {int hi; int low; } ;
struct TYPE_21__ {scalar_t__ tx_power; TYPE_12__* p_proprietary; TYPE_11__ int_range; TYPE_10__* p_service_data; TYPE_7__* p_sol_service_128b; TYPE_6__* p_sol_service_32b; TYPE_5__* p_services_128b; TYPE_4__* p_service_32b; TYPE_3__* p_services; TYPE_2__* p_manu; int appearance; int flag; } ;
typedef TYPE_14__ tBTM_BLE_ADV_DATA ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_30__ {int * uuid128; int uuid32; int uuid16; } ;
struct TYPE_31__ {int len; TYPE_8__ uu; } ;
struct TYPE_29__ {int * uuid128; } ;
struct TYPE_28__ {int num_service; int * p_uuid; } ;
struct TYPE_27__ {int * uuid128; int list_cmpl; } ;
struct TYPE_26__ {int num_service; int * p_uuid; } ;
struct TYPE_25__ {int num_service; int * p_uuid; } ;
struct TYPE_24__ {int len; int * p_val; } ;
struct TYPE_23__ {int * bd_name; } ;
struct TYPE_22__ {TYPE_1__ cfg; } ;
struct TYPE_19__ {int num_elem; TYPE_13__* p_elem; } ;
struct TYPE_17__ {int len; TYPE_9__ service_uuid; int * p_val; } ;


 int ARRAY_TO_STREAM (int*,int *,int) ;
 scalar_t__ BTM_BLE_ADV_TX_POWER_MAX ;
 int BTM_BLE_AD_BIT_APPEARANCE ;
 int BTM_BLE_AD_BIT_DEV_NAME ;
 int BTM_BLE_AD_BIT_FLAGS ;
 int BTM_BLE_AD_BIT_INT_RANGE ;
 int BTM_BLE_AD_BIT_MANU ;
 int BTM_BLE_AD_BIT_PROPRIETARY ;
 int BTM_BLE_AD_BIT_SERVICE ;
 int BTM_BLE_AD_BIT_SERVICE_128 ;
 int BTM_BLE_AD_BIT_SERVICE_128SOL ;
 int BTM_BLE_AD_BIT_SERVICE_32 ;
 int BTM_BLE_AD_BIT_SERVICE_32SOL ;
 int BTM_BLE_AD_BIT_SERVICE_DATA ;
 int BTM_BLE_AD_BIT_TX_PWR ;
 int BTM_BLE_AD_DATA_LEN ;
 int BTM_BLE_AD_TYPE_128SERVICE_DATA ;
 int BTM_BLE_AD_TYPE_128SOL_SRV_UUID ;
 int BTM_BLE_AD_TYPE_128SRV_CMPL ;
 int BTM_BLE_AD_TYPE_128SRV_PART ;
 int BTM_BLE_AD_TYPE_16SRV_CMPL ;
 int BTM_BLE_AD_TYPE_16SRV_PART ;
 int BTM_BLE_AD_TYPE_32SERVICE_DATA ;
 int BTM_BLE_AD_TYPE_32SOL_SRV_UUID ;
 int BTM_BLE_AD_TYPE_32SRV_CMPL ;
 int BTM_BLE_AD_TYPE_32SRV_PART ;
 int BTM_BLE_AD_TYPE_APPEARANCE ;
 int BTM_BLE_AD_TYPE_FLAG ;
 int BTM_BLE_AD_TYPE_INT_RANGE ;
 int BTM_BLE_AD_TYPE_MANU ;
 int BTM_BLE_AD_TYPE_NAME_CMPL ;
 int BTM_BLE_AD_TYPE_NAME_SHORT ;
 int BTM_BLE_AD_TYPE_SERVICE_DATA ;
 int BTM_BLE_AD_TYPE_TX_PWR ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_TRACE_EVENT (char*) ;
 int BTM_TRACE_WARNING (char*) ;
 int LEN_UUID_128 ;
 int LEN_UUID_16 ;
 int LEN_UUID_32 ;
 int MAX_UUID_SIZE ;
 int MIN_ADV_LENGTH ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT32_TO_STREAM (int*,int ) ;
 int btm_ble_map_adv_tx_power (scalar_t__) ;
 TYPE_15__ btm_cb ;
 int strlen (int *) ;

UINT8 *btm_ble_build_adv_data(tBTM_BLE_AD_MASK *p_data_mask, UINT8 **p_dst,
                              tBTM_BLE_ADV_DATA *p_data)
{
    UINT32 data_mask = *p_data_mask;
    UINT8 *p = *p_dst,
             *p_flag = ((void*)0);
    UINT16 len = BTM_BLE_AD_DATA_LEN, cp_len = 0;
    UINT8 i = 0;
    tBTM_BLE_PROP_ELEM *p_elem;

    BTM_TRACE_EVENT (" btm_ble_build_adv_data");


    if (data_mask) {

        if (data_mask & BTM_BLE_AD_BIT_FLAGS) {
            *p++ = MIN_ADV_LENGTH;
            *p++ = BTM_BLE_AD_TYPE_FLAG;
            p_flag = p;
            if (p_data) {
                *p++ = p_data->flag;
            } else {
                *p++ = 0;
            }

            len -= 3;

            data_mask &= ~BTM_BLE_AD_BIT_FLAGS;
        }

        if (len > 3 && data_mask & BTM_BLE_AD_BIT_APPEARANCE) {
            *p++ = 3;
            *p++ = BTM_BLE_AD_TYPE_APPEARANCE;
            UINT16_TO_STREAM(p, p_data->appearance);
            len -= 4;

            data_mask &= ~BTM_BLE_AD_BIT_APPEARANCE;
        }
        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_MANU &&
                p_data && p_data->p_manu &&
                p_data->p_manu->len != 0 && p_data->p_manu->p_val) {
            if (p_data->p_manu->len > (len - MIN_ADV_LENGTH)) {
                cp_len = len - MIN_ADV_LENGTH;
            } else {
                cp_len = p_data->p_manu->len;
            }
            BTM_TRACE_DEBUG("cp_len = %d\n,p_data->p_manu->len=%d\n", cp_len, p_data->p_manu->len);
            for (int i = 0; i < p_data->p_manu->len; i++) {
                BTM_TRACE_DEBUG("p_data->p_manu->p_val[%d] = %x\n", i, p_data->p_manu->p_val[i]);
            }
            *p++ = cp_len + 1;
            *p++ = BTM_BLE_AD_TYPE_MANU;
            ARRAY_TO_STREAM(p, p_data->p_manu->p_val, cp_len);
            BTM_TRACE_DEBUG("p_addr = %p\n,p_data->p_manu->p_val = %p\n", p, p_data->p_manu->p_val);
            len -= (cp_len + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_MANU;
        }

        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_TX_PWR) {
            *p++ = MIN_ADV_LENGTH;
            *p++ = BTM_BLE_AD_TYPE_TX_PWR;
            if (p_data->tx_power > BTM_BLE_ADV_TX_POWER_MAX) {
                p_data->tx_power = BTM_BLE_ADV_TX_POWER_MAX;
            }
            *p++ = btm_ble_map_adv_tx_power(p_data->tx_power);
            len -= 3;
            data_mask &= ~BTM_BLE_AD_BIT_TX_PWR;
        }

        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_SERVICE &&
                p_data && p_data->p_services &&
                p_data->p_services->num_service != 0 &&
                p_data->p_services->p_uuid) {
            if (p_data->p_services->num_service * LEN_UUID_16 > (len - MIN_ADV_LENGTH)) {
                cp_len = (len - MIN_ADV_LENGTH) / LEN_UUID_16;
                *p ++ = 1 + cp_len * LEN_UUID_16;
                *p++ = BTM_BLE_AD_TYPE_16SRV_PART;
            } else {
                cp_len = p_data->p_services->num_service;
                *p++ = 1 + cp_len * LEN_UUID_16;
                *p++ = BTM_BLE_AD_TYPE_16SRV_CMPL;
            }
            for (i = 0; i < cp_len; i ++) {
                UINT16_TO_STREAM(p, *(p_data->p_services->p_uuid + i));
            }

            len -= (cp_len * MIN_ADV_LENGTH + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_SERVICE;
        }

        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_SERVICE_32 &&
                p_data && p_data->p_service_32b &&
                p_data->p_service_32b->num_service != 0 &&
                p_data->p_service_32b->p_uuid) {
            if ((p_data->p_service_32b->num_service * LEN_UUID_32) > (len - MIN_ADV_LENGTH)) {
                cp_len = (len - MIN_ADV_LENGTH) / LEN_UUID_32;
                *p ++ = 1 + cp_len * LEN_UUID_32;
                *p++ = BTM_BLE_AD_TYPE_32SRV_PART;
            } else {
                cp_len = p_data->p_service_32b->num_service;
                *p++ = 1 + cp_len * LEN_UUID_32;
                *p++ = BTM_BLE_AD_TYPE_32SRV_CMPL;
            }
            for (i = 0; i < cp_len; i ++) {
                UINT32_TO_STREAM(p, *(p_data->p_service_32b->p_uuid + i));
            }

            len -= (cp_len * LEN_UUID_32 + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_SERVICE_32;
        }

        if (len >= (MAX_UUID_SIZE + 2) && data_mask & BTM_BLE_AD_BIT_SERVICE_128 &&
                p_data && p_data->p_services_128b) {
            *p ++ = 1 + MAX_UUID_SIZE;
            if (!p_data->p_services_128b->list_cmpl) {
                *p++ = BTM_BLE_AD_TYPE_128SRV_PART;
            } else {
                *p++ = BTM_BLE_AD_TYPE_128SRV_CMPL;
            }

            ARRAY_TO_STREAM(p, p_data->p_services_128b->uuid128, MAX_UUID_SIZE);

            len -= (MAX_UUID_SIZE + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_SERVICE_128;
        }

        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_SERVICE_32SOL &&
                p_data && p_data->p_sol_service_32b &&
                p_data->p_sol_service_32b->num_service != 0 &&
                p_data->p_sol_service_32b->p_uuid) {
            if ((p_data->p_sol_service_32b->num_service * LEN_UUID_32) > (len - MIN_ADV_LENGTH)) {
                cp_len = (len - MIN_ADV_LENGTH) / LEN_UUID_32;
                *p ++ = 1 + cp_len * LEN_UUID_32;
            } else {
                cp_len = p_data->p_sol_service_32b->num_service;
                *p++ = 1 + cp_len * LEN_UUID_32;
            }

            *p++ = BTM_BLE_AD_TYPE_32SOL_SRV_UUID;
            for (i = 0; i < cp_len; i ++) {
                UINT32_TO_STREAM(p, *(p_data->p_sol_service_32b->p_uuid + i));
            }

            len -= (cp_len * LEN_UUID_32 + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_SERVICE_32SOL;
        }

        if (len >= (MAX_UUID_SIZE + MIN_ADV_LENGTH) && data_mask & BTM_BLE_AD_BIT_SERVICE_128SOL &&
                p_data && p_data->p_sol_service_128b) {
            *p ++ = 1 + MAX_UUID_SIZE;
            *p++ = BTM_BLE_AD_TYPE_128SOL_SRV_UUID;
            ARRAY_TO_STREAM(p, p_data->p_sol_service_128b->uuid128, MAX_UUID_SIZE);
            len -= (MAX_UUID_SIZE + MIN_ADV_LENGTH);
            data_mask &= ~BTM_BLE_AD_BIT_SERVICE_128SOL;
        }

        if (len > MIN_ADV_LENGTH && data_mask & BTM_BLE_AD_BIT_SERVICE_DATA &&
                p_data && p_data->p_service_data->len != 0 && p_data->p_service_data->p_val) {
            if (len > (p_data->p_service_data->service_uuid.len + MIN_ADV_LENGTH)) {
                if (p_data->p_service_data->len > (len - MIN_ADV_LENGTH)) {
                    cp_len = len - MIN_ADV_LENGTH - p_data->p_service_data->service_uuid.len;
                } else {
                    cp_len = p_data->p_service_data->len;
                }

                *p++ = cp_len + 1 + p_data->p_service_data->service_uuid.len;
                if (p_data->p_service_data->service_uuid.len == LEN_UUID_16) {
                    *p++ = BTM_BLE_AD_TYPE_SERVICE_DATA;
                    UINT16_TO_STREAM(p, p_data->p_service_data->service_uuid.uu.uuid16);
                } else if (p_data->p_service_data->service_uuid.len == LEN_UUID_32) {
                    *p++ = BTM_BLE_AD_TYPE_32SERVICE_DATA;
                    UINT32_TO_STREAM(p, p_data->p_service_data->service_uuid.uu.uuid32);
                } else {
                    *p++ = BTM_BLE_AD_TYPE_128SERVICE_DATA;
                    ARRAY_TO_STREAM(p, p_data->p_service_data->service_uuid.uu.uuid128,
                                    LEN_UUID_128);
                }

                ARRAY_TO_STREAM(p, p_data->p_service_data->p_val, cp_len);

                len -= (cp_len + MIN_ADV_LENGTH + p_data->p_service_data->service_uuid.len);
                data_mask &= ~BTM_BLE_AD_BIT_SERVICE_DATA;
            } else {
                BTM_TRACE_WARNING("service data does not fit");
            }
        }

        if (len >= 6 && data_mask & BTM_BLE_AD_BIT_INT_RANGE &&
                p_data) {
            *p++ = 5;
            *p++ = BTM_BLE_AD_TYPE_INT_RANGE;
            UINT16_TO_STREAM(p, p_data->int_range.low);
            UINT16_TO_STREAM(p, p_data->int_range.hi);
            len -= 6;
            data_mask &= ~BTM_BLE_AD_BIT_INT_RANGE;
        }
        if (data_mask & BTM_BLE_AD_BIT_PROPRIETARY && p_data && p_data->p_proprietary) {
            for (i = 0; i < p_data->p_proprietary->num_elem ; i ++) {
                p_elem = p_data->p_proprietary->p_elem + i;

                if (len >= (MIN_ADV_LENGTH + p_elem->len))

                {
                    *p ++ = p_elem->len + 1;
                    *p ++ = p_elem->adv_type;
                    ARRAY_TO_STREAM(p, p_elem->p_val, p_elem->len);

                    len -= (MIN_ADV_LENGTH + p_elem->len);
                } else {
                    BTM_TRACE_WARNING("data exceed max adv packet length");
                    break;
                }
            }
            data_mask &= ~BTM_BLE_AD_BIT_PROPRIETARY;
        }
    }

    *p_data_mask = data_mask;
    *p_dst = p;

    return p_flag;
}

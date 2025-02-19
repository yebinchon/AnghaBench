
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int trusted_services_mask ;
struct TYPE_5__ {int tm; int* bd_addr; int pin_length; int io_cap; int key_type; int features; int bd_name; scalar_t__ is_trusted; scalar_t__ link_key; scalar_t__ link_key_known; scalar_t__ dc; scalar_t__ dc_known; } ;
struct TYPE_4__ {TYPE_2__ add_dev; } ;
typedef TYPE_1__ tBTA_DM_MSG ;
typedef TYPE_2__ tBTA_DM_API_ADD_DEVICE ;
typedef int UINT8 ;
typedef int UINT32 ;


 int APPL_TRACE_ERROR (char*,int,int) ;
 int BTA_MAX_SERVICE_ID ;
 int BTM_SEC_ARRAY_BITS ;
 int BTM_SEC_SERVICE_ARRAY_SIZE ;
 int BTM_SecAddDevice (int*,int*,int ,int ,int*,int*,int ,int ,int ) ;
 int* bta_service_id_to_btm_srv_id_lkup_tbl ;
 int memset (int*,int ,int) ;

void bta_dm_add_device (tBTA_DM_MSG *p_data)
{
    tBTA_DM_API_ADD_DEVICE *p_dev = &p_data->add_dev;
    UINT8 *p_dc = ((void*)0);
    UINT8 *p_lc = ((void*)0);
    UINT32 trusted_services_mask[BTM_SEC_SERVICE_ARRAY_SIZE];
    UINT8 index = 0;
    UINT8 btm_mask_index = 0;

    memset (trusted_services_mask, 0, sizeof(trusted_services_mask));


    if (p_dev->dc_known) {
        p_dc = (UINT8 *)p_dev->dc;
    }

    if (p_dev->link_key_known) {
        p_lc = (UINT8 *)p_dev->link_key;
    }

    if (p_dev->is_trusted) {

        while (p_dev->tm && (index < BTA_MAX_SERVICE_ID)) {
            if (p_dev->tm & (UINT32)(1 << index)) {

                btm_mask_index = bta_service_id_to_btm_srv_id_lkup_tbl[index] / BTM_SEC_ARRAY_BITS;
                trusted_services_mask[btm_mask_index] |= (UINT32)(1 << (bta_service_id_to_btm_srv_id_lkup_tbl[index] - (UINT32)(btm_mask_index * 32)));

                p_dev->tm &= (UINT32)(~(1 << index));

            }
            index++;
        }
    }

    if (!BTM_SecAddDevice (p_dev->bd_addr, p_dc, p_dev->bd_name, p_dev->features,
                           trusted_services_mask, p_lc, p_dev->key_type, p_dev->io_cap,
                           p_dev->pin_length)) {
        APPL_TRACE_ERROR ("BTA_DM: Error adding device %08x%04x",
                          (p_dev->bd_addr[0] << 24) + (p_dev->bd_addr[1] << 16) + (p_dev->bd_addr[2] << 8) + p_dev->bd_addr[3],
                          (p_dev->bd_addr[4] << 8) + p_dev->bd_addr[5]);
    }
}

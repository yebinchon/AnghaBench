
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tGATT_STATUS ;
struct TYPE_15__ {int attr_max_len; int attr_len; int* attr_val; } ;
typedef TYPE_4__ tGATT_ATTR_VAL ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_12__ {int uuid16; int uuid128; } ;
struct TYPE_16__ {TYPE_3__ member_1; int member_0; TYPE_1__ uu; } ;
typedef TYPE_5__ tBT_UUID ;
typedef int UINT16 ;
struct TYPE_13__ {int handle; scalar_t__ service_change; int uuid; } ;
struct TYPE_17__ {int gatt_if; int handle_of_h_r; TYPE_2__ gattp_attr; } ;


 int GATTP_MAX_ATTR_NUM ;
 int GATTP_TRANSPORT_SUPPORTED ;
 int GATTS_AddCharDescriptor (int ,int,TYPE_5__*,TYPE_4__*,int *) ;
 int GATTS_AddCharacteristic (int ,TYPE_5__*,int ,int ,int *,int *) ;
 int GATTS_CreateService (int ,TYPE_5__*,int ,int ,int ) ;
 int GATTS_StartService (int ,int ,int ) ;
 int GATT_CHAR_PROP_BIT_INDICATE ;
 int GATT_PERM_READ ;
 int GATT_PERM_WRITE ;
 int GATT_Register (TYPE_5__*,int *) ;
 int GATT_StartIf (int ) ;
 int GATT_TRACE_DEBUG (char*,int ,...) ;
 int GATT_UUID_CHAR_CLIENT_CONFIG ;
 int GATT_UUID_GATT_SRV_CHGD ;
 int LEN_UUID_128 ;
 int LEN_UUID_16 ;
 int TRUE ;
 int UUID_SERVCLASS_GATT_SERVER ;
 TYPE_6__ gatt_cb ;
 int gatt_profile_cback ;
 int memset (int *,int,int ) ;

void gatt_profile_db_init (void)
{
    tBT_UUID app_uuid = {LEN_UUID_128, {0}};
    tBT_UUID uuid = {LEN_UUID_16, {UUID_SERVCLASS_GATT_SERVER}};
    UINT16 service_handle = 0;
    tGATT_STATUS status;


    memset (&app_uuid.uu.uuid128, 0x81, LEN_UUID_128);



    gatt_cb.gatt_if = GATT_Register(&app_uuid, &gatt_profile_cback);
    GATT_StartIf(gatt_cb.gatt_if);

    service_handle = GATTS_CreateService (gatt_cb.gatt_if , &uuid, 0, GATTP_MAX_ATTR_NUM, TRUE);
    GATT_TRACE_DEBUG ("GATTS_CreateService:  handle of service handle%x", service_handle);



    uuid.uu.uuid16 = gatt_cb.gattp_attr.uuid = GATT_UUID_GATT_SRV_CHGD;
    gatt_cb.gattp_attr.service_change = 0;
    gatt_cb.gattp_attr.handle =
    gatt_cb.handle_of_h_r = GATTS_AddCharacteristic(service_handle, &uuid, 0, GATT_CHAR_PROP_BIT_INDICATE,
                    ((void*)0), ((void*)0));

    GATT_TRACE_DEBUG ("gatt_profile_db_init:  handle of service changed%d\n",
                      gatt_cb.handle_of_h_r);

    tBT_UUID descr_uuid = {LEN_UUID_16, {GATT_UUID_CHAR_CLIENT_CONFIG}};
    uint8_t ccc_value[2] ={ 0x00, 0x00};

    tGATT_ATTR_VAL attr_val = {
        .attr_max_len = sizeof(UINT16),
        .attr_len = sizeof(UINT16),
        .attr_val = ccc_value,
    };

    GATTS_AddCharDescriptor (service_handle, GATT_PERM_READ | GATT_PERM_WRITE , &descr_uuid, &attr_val, ((void*)0));


    status = GATTS_StartService (gatt_cb.gatt_if, service_handle, GATTP_TRANSPORT_SUPPORTED );





    GATT_TRACE_DEBUG ("gatt_profile_db_init:  gatt_if=%d   start status%d\n",
                      gatt_cb.gatt_if, status);
}

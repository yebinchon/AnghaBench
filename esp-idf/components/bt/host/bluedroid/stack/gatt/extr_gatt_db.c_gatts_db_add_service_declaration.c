
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tGATT_SVC_DB ;
struct TYPE_15__ {TYPE_4__* p_value; } ;
typedef TYPE_6__ tGATT_ATTR16 ;
struct TYPE_14__ {int uuid128; int uuid32; int uuid16; } ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_16__ {scalar_t__ member_0; scalar_t__ len; TYPE_5__ uu; TYPE_1__ member_1; } ;
typedef TYPE_7__ tBT_UUID ;
struct TYPE_11__ {int uuid128; int uuid16; } ;
struct TYPE_12__ {TYPE_2__ uu; void* len; } ;
struct TYPE_13__ {TYPE_3__ uuid; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int GATT_PERM_READ ;
 int GATT_TRACE_DEBUG (char*) ;
 int GATT_UUID_PRI_SERVICE ;
 int GATT_UUID_SEC_SERVICE ;
 void* LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 scalar_t__ LEN_UUID_32 ;
 scalar_t__ TRUE ;
 scalar_t__ allocate_attr_in_db (int *,TYPE_7__*,int ) ;
 scalar_t__ copy_extra_byte_in_db (int *,void**,int) ;
 int gatt_convert_uuid32_to_uuid128 (int ,int ) ;
 int memcpy (int ,int ,void*) ;

__attribute__((used)) static BOOLEAN gatts_db_add_service_declaration(tGATT_SVC_DB *p_db, tBT_UUID *p_service, BOOLEAN is_pri)
{
    tGATT_ATTR16 *p_attr;
    tBT_UUID uuid = {LEN_UUID_16, {0}};
    BOOLEAN rt = FALSE;

    GATT_TRACE_DEBUG( "add_service_declaration");

    if (is_pri) {
        uuid.uu.uuid16 = GATT_UUID_PRI_SERVICE;
    } else {
        uuid.uu.uuid16 = GATT_UUID_SEC_SERVICE;
    }


    if ((p_attr = (tGATT_ATTR16 *)(allocate_attr_in_db(p_db, &uuid, GATT_PERM_READ))) != ((void*)0)) {
        if (copy_extra_byte_in_db (p_db, (void **)&p_attr->p_value, sizeof(tBT_UUID))) {
            if (p_service->len == LEN_UUID_16) {
                p_attr->p_value->uuid.len = LEN_UUID_16;
                p_attr->p_value->uuid.uu.uuid16 = p_service->uu.uuid16;
            } else if (p_service->len == LEN_UUID_32) {
                p_attr->p_value->uuid.len = LEN_UUID_128;
                gatt_convert_uuid32_to_uuid128(p_attr->p_value->uuid.uu.uuid128, p_service->uu.uuid32);
            } else {
                p_attr->p_value->uuid.len = LEN_UUID_128;
                memcpy(p_attr->p_value->uuid.uu.uuid128, p_service->uu.uuid128, LEN_UUID_128);
            }
            rt = TRUE;
        }

    }
    return rt;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uuid128; int uuid32; int uuid16; } ;
struct TYPE_6__ {int len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef size_t UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_ERROR (char*) ;
 int GATT_TRACE_WARNING (char*) ;



 int STREAM_TO_UINT16 (int ,size_t*) ;
 int STREAM_TO_UINT32 (int ,size_t*) ;
 int TRUE ;
 size_t* base_uuid ;
 int memcpy (int ,size_t*,int const) ;
 int memset (TYPE_2__*,int ,int) ;

BOOLEAN gatt_parse_uuid_from_cmd(tBT_UUID *p_uuid_rec, UINT16 uuid_size, UINT8 **p_data)
{
    BOOLEAN is_base_uuid, ret = TRUE;
    UINT8 xx;
    UINT8 *p_uuid = *p_data;

    memset(p_uuid_rec, 0, sizeof(tBT_UUID));

    switch (uuid_size) {
    case 129:
        p_uuid_rec->len = uuid_size;
        STREAM_TO_UINT16 (p_uuid_rec->uu.uuid16, p_uuid);
        *p_data += 129;
        break;

    case 130:

        is_base_uuid = TRUE;
        for (xx = 0; xx < 130 - 4; xx++) {
            if (p_uuid[xx] != base_uuid[xx]) {
                is_base_uuid = FALSE;
                break;
            }
        }
        if (is_base_uuid) {
            if ((p_uuid[130 - 1] == 0) && (p_uuid[130 - 2] == 0)) {
                p_uuid += (130 - 4);
                p_uuid_rec->len = 129;
                STREAM_TO_UINT16(p_uuid_rec->uu.uuid16, p_uuid);
            } else {
                p_uuid += (130 - 128);
                p_uuid_rec->len = 128;
                STREAM_TO_UINT32(p_uuid_rec->uu.uuid32, p_uuid);
            }
        }
        if (!is_base_uuid) {
            p_uuid_rec->len = 130;
            memcpy(p_uuid_rec->uu.uuid128, p_uuid, 130);
        }
        *p_data += 130;
        break;


    case 128:
        GATT_TRACE_ERROR("DO NOT ALLOW 32 BITS UUID IN ATT PDU");
    case 0:
    default:
        if (uuid_size != 0) {
            ret = FALSE;
        }
        GATT_TRACE_WARNING("gatt_parse_uuid_from_cmd invalid uuid size");
        break;
    }

    return ( ret);
}

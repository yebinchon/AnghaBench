
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid16; int* uuid128; scalar_t__ uuid32; } ;
struct TYPE_5__ {scalar_t__ len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef int str_buf ;


 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int GATT_TRACE_DEBUG (char*,char*) ;
 scalar_t__ LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 scalar_t__ LEN_UUID_32 ;
 scalar_t__ sprintf (char*,char*,int,...) ;

void gatt_dbg_display_uuid(tBT_UUID bt_uuid)
{
    char str_buf[50];
    int x = 0;

    if (bt_uuid.len == LEN_UUID_16) {
        sprintf(str_buf, "0x%04x", bt_uuid.uu.uuid16);
    } else if (bt_uuid.len == LEN_UUID_32) {
        sprintf(str_buf, "0x%08x", (unsigned int)bt_uuid.uu.uuid32);
    } else if (bt_uuid.len == LEN_UUID_128) {
        x += sprintf(&str_buf[x], "0x%02x%02x%02x%02x%02x%02x%02x%02x",
                     bt_uuid.uu.uuid128[15], bt_uuid.uu.uuid128[14],
                     bt_uuid.uu.uuid128[13], bt_uuid.uu.uuid128[12],
                     bt_uuid.uu.uuid128[11], bt_uuid.uu.uuid128[10],
                     bt_uuid.uu.uuid128[9], bt_uuid.uu.uuid128[8]);
        sprintf(&str_buf[x], "%02x%02x%02x%02x%02x%02x%02x%02x",
                bt_uuid.uu.uuid128[7], bt_uuid.uu.uuid128[6],
                bt_uuid.uu.uuid128[5], bt_uuid.uu.uuid128[4],
                bt_uuid.uu.uuid128[3], bt_uuid.uu.uuid128[2],
                bt_uuid.uu.uuid128[1], bt_uuid.uu.uuid128[0]);
    } else {
        BCM_STRNCPY_S(str_buf, sizeof(str_buf), "Unknown UUID 0", 15);
    }

    GATT_TRACE_DEBUG ("UUID=[%s]", str_buf);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uuid16; scalar_t__ uuid32; int uuid128; } ;
struct TYPE_6__ {int len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int memcmp (int ,int ,int) ;

BOOLEAN sdpu_compare_bt_uuids (tBT_UUID *p_uuid1, tBT_UUID *p_uuid2)
{

    if (p_uuid1->len == p_uuid2->len) {
        if (p_uuid1->len == 2) {
            return (p_uuid1->uu.uuid16 == p_uuid2->uu.uuid16);
        } else if (p_uuid1->len == 4) {
            return (p_uuid1->uu.uuid32 == p_uuid2->uu.uuid32);
        } else if (!memcmp (p_uuid1->uu.uuid128, p_uuid2->uu.uuid128, 16)) {
            return (TRUE);
        }
    }

    return (FALSE);
}

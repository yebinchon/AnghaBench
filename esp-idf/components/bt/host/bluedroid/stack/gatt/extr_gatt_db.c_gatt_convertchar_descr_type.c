
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int uuid16; } ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_9__ {TYPE_2__ uu; TYPE_1__ member_1; int member_0; } ;
typedef TYPE_3__ tBT_UUID ;
typedef int UINT8 ;


 int GATT_DESCR_AGGR_FORMAT ;
 int GATT_DESCR_CLT_CONFIG ;
 int GATT_DESCR_EXT_DSCPTOR ;
 int GATT_DESCR_PRES_FORMAT ;
 int GATT_DESCR_SVR_CONFIG ;
 int GATT_DESCR_UNKNOWN ;
 int GATT_DESCR_USER_DSCPTOR ;
 int GATT_DESCR_VALID_RANGE ;
 int GATT_UUID_CHAR_EXT_PROP ;
 int LEN_UUID_16 ;
 scalar_t__ gatt_uuid_compare (TYPE_3__,TYPE_3__) ;

UINT8 gatt_convertchar_descr_type(tBT_UUID *p_descr_uuid)
{
    tBT_UUID std_descr = {LEN_UUID_16, {GATT_UUID_CHAR_EXT_PROP}};

    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_EXT_DSCPTOR;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_USER_DSCPTOR;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_CLT_CONFIG;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_SVR_CONFIG;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_PRES_FORMAT;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_AGGR_FORMAT;
    }

    std_descr.uu.uuid16 ++;
    if (gatt_uuid_compare(std_descr, * p_descr_uuid)) {
        return GATT_DESCR_VALID_RANGE;
    }


    return GATT_DESCR_UNKNOWN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tDIS_ATTR_MASK ;
typedef int UINT16 ;


 int DIS_ATTR_FW_NUM_BIT ;
 int DIS_ATTR_HW_NUM_BIT ;
 int DIS_ATTR_IEEE_DATA_BIT ;
 int DIS_ATTR_MANU_NAME_BIT ;
 int DIS_ATTR_MODEL_NUM_BIT ;
 int DIS_ATTR_PNP_ID_BIT ;
 int DIS_ATTR_SERIAL_NUM_BIT ;
 int DIS_ATTR_SW_NUM_BIT ;
 int DIS_ATTR_SYS_ID_BIT ;
__attribute__((used)) static tDIS_ATTR_MASK dis_uuid_to_attr(UINT16 uuid)
{
    switch (uuid) {
    case 128:
        return DIS_ATTR_SYS_ID_BIT;
    case 132:
        return DIS_ATTR_MODEL_NUM_BIT;
    case 130:
        return DIS_ATTR_SERIAL_NUM_BIT;
    case 136:
        return DIS_ATTR_FW_NUM_BIT;
    case 135:
        return DIS_ATTR_HW_NUM_BIT;
    case 129:
        return DIS_ATTR_SW_NUM_BIT;
    case 133:
        return DIS_ATTR_MANU_NAME_BIT;
    case 134:
        return DIS_ATTR_IEEE_DATA_BIT;
    case 131:
        return DIS_ATTR_PNP_ID_BIT;
    default:
        return 0;
    };
}

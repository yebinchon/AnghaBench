
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT16 ;
 int BT_PASS ;
 int GAP_BAD_BD_ADDR ;
 int GAP_CMD_INITIATED ;
 int GAP_DEVICE_NOT_UP ;
 int GAP_ERR_BUSY ;
 int GAP_ERR_ILL_PARM ;
 int GAP_ERR_PROCESSING ;
 int GAP_ERR_TIMEOUT ;

UINT16 gap_convert_btm_status (tBTM_STATUS btm_status)
{
    switch (btm_status) {
    case 130:
        return (BT_PASS);

    case 134:
        return (GAP_CMD_INITIATED);

    case 135:
        return (GAP_ERR_BUSY);

    case 131:
    case 132:
        return (GAP_ERR_ILL_PARM);

    case 128:
        return (GAP_DEVICE_NOT_UP);

    case 129:
        return (GAP_BAD_BD_ADDR);

    case 133:
        return (GAP_ERR_TIMEOUT);

    default:
        return (GAP_ERR_PROCESSING);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int GATT_CMD_WRITE ;

UINT8 gatt_cmd_to_rsp_code (UINT8 cmd_code)
{
    UINT8 rsp_code = 0;

    if (cmd_code > 1 && cmd_code != GATT_CMD_WRITE) {
        rsp_code = cmd_code + 1;
    }
    return rsp_code;
}

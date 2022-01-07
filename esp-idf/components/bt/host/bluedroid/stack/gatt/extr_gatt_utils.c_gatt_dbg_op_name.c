
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 size_t GATT_CMD_WRITE ;
 size_t GATT_OP_CODE_MAX ;
 size_t GATT_SIGN_CMD_WRITE ;
 size_t GATT_WRITE_CMD_MASK ;
 scalar_t__* op_code_name ;

UINT8 *gatt_dbg_op_name(UINT8 op_code)
{
    UINT8 pseduo_op_code_idx = op_code & (~GATT_WRITE_CMD_MASK);

    if (op_code == GATT_CMD_WRITE ) {
        pseduo_op_code_idx = 0x14;

    }

    if (op_code == GATT_SIGN_CMD_WRITE) {
        pseduo_op_code_idx = 0x15;
    }

    if (pseduo_op_code_idx <= GATT_OP_CODE_MAX) {
        return (UINT8 *) op_code_name[pseduo_op_code_idx];
    } else {
        return (UINT8 *)"Op Code Exceed Max";
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int memcpy (int*,int *,int) ;
 int sys_cpu_to_be16 (int) ;
 int sys_cpu_to_le16 (int) ;

esp_err_t esp_ble_mesh_model_msg_opcode_init(uint8_t *data, uint32_t opcode)
{
    uint16_t val;

    if (data == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (opcode < 0x100) {

        data[0] = opcode & 0xff;
        return ESP_OK;
    }

    if (opcode < 0x10000) {

        val = sys_cpu_to_be16 (opcode);
        memcpy(data, &val, 2);
        return ESP_OK;
    }


    data[0] = (opcode >> 16) & 0xff;
    val = sys_cpu_to_le16(opcode & 0xffff);
    memcpy(&data[1], &val, 2);

    return ESP_OK;
}

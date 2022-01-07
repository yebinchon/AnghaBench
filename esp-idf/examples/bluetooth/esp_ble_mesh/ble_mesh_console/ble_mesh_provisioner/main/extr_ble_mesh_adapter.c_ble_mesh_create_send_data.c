
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;





 char VENDOR_MODEL_PERF_OPERATION_TYPE_GET ;
 char VENDOR_MODEL_PERF_OPERATION_TYPE_SET ;
 char VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK ;

void ble_mesh_create_send_data(char *data, uint16_t byte_num, uint16_t sequence_num, uint32_t opcode)
{
    uint16_t i;


    data[0] = sequence_num >> 8;
    data[1] = sequence_num & 0xFF;
    switch (opcode) {
    case 130:
        data[2] = VENDOR_MODEL_PERF_OPERATION_TYPE_GET;
        break;
    case 129:
        data[2] = VENDOR_MODEL_PERF_OPERATION_TYPE_SET;
        break;
    case 128:
        data[2] = VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK;
        break;
    }

    for (i = 3; i < byte_num; i++) {
        data[i] = i;
    }
}

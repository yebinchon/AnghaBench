
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_CRC ;
 int ESP_OK ;
 int TEST_ASSERT (int ) ;
 int get_buffer_crc16 (int*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static esp_err_t print_packet_data(const char *str, uint8_t *buffer, uint16_t buffer_size)
{
    TEST_ASSERT( buffer != ((void*)0));
    TEST_ASSERT( str != ((void*)0));


    uint16_t crc16_calc = get_buffer_crc16(buffer, (buffer_size - 2));
    uint16_t crc16_in = ((uint16_t)(buffer[buffer_size - 1]) << 8) | buffer[buffer_size - 2];
    const char* state_str = (crc16_in != crc16_calc) ? "incorrect " : "correct ";

    printf("%s%s RS485 packet = [ ", str, state_str);
    for (int i = 0; i < buffer_size; i++) {
            printf("0x%.2X ", (uint8_t)buffer[i]);
    }
    printf(" ]\r\n");
    printf("crc_in = 0x%.4X\r\n", (uint16_t)crc16_in);
    printf("crc_calc = 0x%.4X\r\n", (uint16_t)crc16_calc);
    esp_err_t result = (crc16_in != crc16_calc) ? ESP_ERR_INVALID_CRC : ESP_OK;
    return result;
}

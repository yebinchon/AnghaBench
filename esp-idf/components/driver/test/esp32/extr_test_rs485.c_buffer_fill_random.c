
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int MIN (size_t,int) ;
 int TEST_ASSERT (int ) ;
 int esp_random () ;
 int get_buffer_crc16 (scalar_t__*,size_t) ;
 int memcpy (scalar_t__*,int *,int ) ;

__attribute__((used)) static uint16_t buffer_fill_random(uint8_t *buffer, size_t length)
{
    TEST_ASSERT( buffer != ((void*)0));

    if (length < 4) {
        return 0;
    }
    for (int i = 0; i < length; i += 4) {
        uint32_t random = esp_random();
        memcpy(buffer + i, &random, MIN(length - i, 4));
    }

    uint16_t crc = get_buffer_crc16((uint8_t*)buffer, (length - 2));

    buffer[length - 2] = (uint8_t)(crc & 0xFF);
    buffer[length - 1] = (uint8_t)(crc >> 8);
    return crc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int TEST_ASSERT (int ) ;
 int* crc_hi ;
 int* crc_low ;

__attribute__((used)) static uint16_t get_buffer_crc16( uint8_t * frame_ptr, uint16_t length )
{
    TEST_ASSERT( frame_ptr != ((void*)0));

    uint8_t crc_hi_byte = 0xFF;
    uint8_t crc_low_byte = 0xFF;
    int index;

    while ( length-- )
    {
        index = crc_low_byte ^ *(frame_ptr++);
        crc_low_byte = crc_hi_byte ^ crc_hi[index];
        crc_hi_byte = crc_low[index];
    }
    return ((crc_hi_byte << 8) | crc_low_byte);
}

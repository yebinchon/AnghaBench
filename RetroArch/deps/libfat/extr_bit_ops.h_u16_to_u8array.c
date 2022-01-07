
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void u16_to_u8array (uint8_t* item, int offset, uint16_t value)
{
 item[offset] = (uint8_t) value;
 item[offset + 1] = (uint8_t)(value >> 8);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static inline uint16_t u8array_to_u16 (const uint8_t* item, int offset)
{
 return ( item[offset] | (item[offset + 1] << 8));
}

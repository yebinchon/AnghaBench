
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void store_u32(uint8_t *buffer, uint32_t value)
{
   buffer[0] = (uint8_t)value;
   buffer[1] = (uint8_t)(value >> 8);
   buffer[2] = (uint8_t)(value >> 16);
   buffer[3] = (uint8_t)(value >> 24);
}

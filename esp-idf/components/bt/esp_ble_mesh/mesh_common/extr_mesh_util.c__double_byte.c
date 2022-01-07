
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MASK_TWENTY_SEVEN ;

uint8_t _double_byte(uint8_t a)
{
    return ((a << 1) ^ ((a >> 7) * MASK_TWENTY_SEVEN));
}

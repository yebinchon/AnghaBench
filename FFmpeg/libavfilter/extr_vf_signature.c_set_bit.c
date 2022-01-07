
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void set_bit(uint8_t* data, size_t pos)
{
    uint8_t mask = 1 << 7-(pos%8);
    data[pos/8] |= mask;
}

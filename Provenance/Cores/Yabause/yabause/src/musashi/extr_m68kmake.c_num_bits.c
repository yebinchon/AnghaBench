
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int num_bits(int value)
{
    value = ((value & 0xaaaa) >> 1) + (value & 0x5555);
    value = ((value & 0xcccc) >> 2) + (value & 0x3333);
    value = ((value & 0xf0f0) >> 4) + (value & 0x0f0f);
    value = ((value & 0xff00) >> 8) + (value & 0x00ff);
 return value;
}

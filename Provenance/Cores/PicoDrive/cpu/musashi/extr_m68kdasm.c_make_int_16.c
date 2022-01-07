
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int make_int_16(int value)
{
 return (value & 0x8000) ? value | ~0xffff : value & 0xffff;
}

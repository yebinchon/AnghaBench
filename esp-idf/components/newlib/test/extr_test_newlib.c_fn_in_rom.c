
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool fn_in_rom(void *fn, const char *name)
{
    const int fnaddr = (int)fn;
    return (fnaddr >= 0x40000000) && (fnaddr < 0x40070000);
}

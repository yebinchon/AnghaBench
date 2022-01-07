
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t eri_read(int addr) {
    uint32_t ret;
    asm volatile (
        "RER %0,%1"
        :"=r"(ret):"r"(addr)
        );
    return ret;
}

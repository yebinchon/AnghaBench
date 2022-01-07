
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int rnd () ;

__attribute__((used)) static uint32_t get_v210(void)
{
    uint32_t t0 = rnd() & 0x3ff,
             t1 = rnd() & 0x3ff,
             t2 = rnd() & 0x3ff;
    uint32_t value = t0
                   | (t1 << 10)
                   | (t2 << 20);
    return value;
}

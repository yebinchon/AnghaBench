
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_call(void* params)
{
    for (int i = 0 ; i < 1000 ; i++) {
        __asm__ __volatile__("   nop");
    }
}

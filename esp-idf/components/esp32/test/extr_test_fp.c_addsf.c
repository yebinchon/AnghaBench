
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float addsf(float a, float b)
{
    float result;
    asm volatile (
        "wfr f0, %1\n"
        "wfr f1, %2\n"
        "add.s f2, f0, f1\n"
        "rfr %0, f2\n"
        :"=r"(result):"r"(a), "r"(b)
    );
    return result;
}

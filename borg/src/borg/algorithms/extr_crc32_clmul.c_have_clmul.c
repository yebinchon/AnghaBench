
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int
have_clmul(void)
{
    unsigned eax, ebx, ecx, edx;
    int has_pclmulqdq;
    int has_sse41;
    cpuid(1 , &eax, &ebx, &ecx, &edx);

    has_pclmulqdq = ecx & 0x2;
    has_sse41 = ecx & 0x80000;

    return has_pclmulqdq && has_sse41;
}

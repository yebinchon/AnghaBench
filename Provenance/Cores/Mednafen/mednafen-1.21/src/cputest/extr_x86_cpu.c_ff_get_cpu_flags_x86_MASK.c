#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ x86_reg ;

/* Variables and functions */
 int CPUTEST_FLAG_3DNOW ; 
 int CPUTEST_FLAG_3DNOWEXT ; 
 int CPUTEST_FLAG_ATOM ; 
 int CPUTEST_FLAG_AVX ; 
 int CPUTEST_FLAG_CMOV ; 
 int CPUTEST_FLAG_MMX ; 
 int CPUTEST_FLAG_MMX2 ; 
 int CPUTEST_FLAG_SSE ; 
 int CPUTEST_FLAG_SSE2 ; 
 int CPUTEST_FLAG_SSE2SLOW ; 
 int CPUTEST_FLAG_SSE3 ; 
 int CPUTEST_FLAG_SSE3SLOW ; 
 int CPUTEST_FLAG_SSE4 ; 
 int CPUTEST_FLAG_SSE42 ; 
 int CPUTEST_FLAG_SSSE3 ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

int FUNC3(void)
{
    int rval = 0;
    int eax, ebx, ecx, edx;
    int max_std_level, max_ext_level, std_caps=0, ext_caps=0;
    int family=0, model=0;
    union { int i[3]; char c[12]; } vendor;

#if ARCH_X86_32
    x86_reg a, c;
    __asm__ volatile (
        /* See if CPUID instruction is supported ... */
        /* ... Get copies of EFLAGS into eax and ecx */
        "pushfl\n\t"
        "pop %0\n\t"
        "mov %0, %1\n\t"

        /* ... Toggle the ID bit in one copy and store */
        /*     to the EFLAGS reg */
        "xor $0x200000, %0\n\t"
        "push %0\n\t"
        "popfl\n\t"

        /* ... Get the (hopefully modified) EFLAGS */
        "pushfl\n\t"
        "pop %0\n\t"
        : "=a" (a), "=c" (c)
        :
        : "cc"
        );

    if (a == c)
        return 0; /* CPUID not supported */
#endif

    FUNC0(0, max_std_level, vendor.i[0], vendor.i[2], vendor.i[1]);

    if(max_std_level >= 1){
        FUNC0(1, eax, ebx, ecx, std_caps);
        family = ((eax>>8)&0xf) + ((eax>>20)&0xff);
        model  = ((eax>>4)&0xf) + ((eax>>12)&0xf0);

	// Mednafen addition(cmov):
	if (std_caps & (1<<15))
	    rval |= CPUTEST_FLAG_CMOV;

        if (std_caps & (1<<23))
            rval |= CPUTEST_FLAG_MMX;
        if (std_caps & (1<<25))
            rval |= CPUTEST_FLAG_MMX2
//#if HAVE_SSE
                  | CPUTEST_FLAG_SSE;
        if (std_caps & (1<<26))
            rval |= CPUTEST_FLAG_SSE2;
        if (ecx & 1)
            rval |= CPUTEST_FLAG_SSE3;
        if (ecx & 0x00000200 )
            rval |= CPUTEST_FLAG_SSSE3;
        if (ecx & 0x00080000 )
            rval |= CPUTEST_FLAG_SSE4;
        if (ecx & 0x00100000 )
            rval |= CPUTEST_FLAG_SSE42;
//#if HAVE_AVX
        /* Check OXSAVE and AVX bits */
        if ((ecx & 0x18000000) == 0x18000000) {
            /* Check for OS support */
            FUNC2(0, eax, edx);
            if ((eax & 0x6) == 0x6)
                rval |= CPUTEST_FLAG_AVX;
        }
//#endif
//#endif
                  ;
    }

    FUNC0(0x80000000, max_ext_level, ebx, ecx, edx);

    if(max_ext_level >= 0x80000001){
        FUNC0(0x80000001, eax, ebx, ecx, ext_caps);
        if (ext_caps & (1U<<31))
            rval |= CPUTEST_FLAG_3DNOW;
        if (ext_caps & (1U<<30))
            rval |= CPUTEST_FLAG_3DNOWEXT;
        if (ext_caps & (1U<<23))
            rval |= CPUTEST_FLAG_MMX;
        if (ext_caps & (1U<<22))
            rval |= CPUTEST_FLAG_MMX2;

        /* Allow for selectively disabling SSE2 functions on AMD processors
           with SSE2 support but not SSE4a. This includes Athlon64, some
           Opteron, and some Sempron processors. MMX, SSE, or 3DNow! are faster
           than SSE2 often enough to utilize this special-case flag.
           CPUTEST_FLAG_SSE2 and CPUTEST_FLAG_SSE2SLOW are both set in this case
           so that SSE2 is used unless explicitly disabled by checking
           CPUTEST_FLAG_SSE2SLOW. */
        if (!FUNC1(vendor.c, "AuthenticAMD", 12) &&
            rval & CPUTEST_FLAG_SSE2 && !(ecx & 0x00000040)) {
            rval |= CPUTEST_FLAG_SSE2SLOW;
        }
    }

    if (!FUNC1(vendor.c, "GenuineIntel", 12)) {
        if (family == 6 && (model == 9 || model == 13 || model == 14)) {
            /* 6/9 (pentium-m "banias"), 6/13 (pentium-m "dothan"), and 6/14 (core1 "yonah")
            * theoretically support sse2, but it's usually slower than mmx,
            * so let's just pretend they don't. CPUTEST_FLAG_SSE2 is disabled and
            * CPUTEST_FLAG_SSE2SLOW is enabled so that SSE2 is not used unless
            * explicitly enabled by checking CPUTEST_FLAG_SSE2SLOW. The same
            * situation applies for CPUTEST_FLAG_SSE3 and CPUTEST_FLAG_SSE3SLOW. */
            if (rval & CPUTEST_FLAG_SSE2) rval ^= CPUTEST_FLAG_SSE2SLOW|CPUTEST_FLAG_SSE2;
            if (rval & CPUTEST_FLAG_SSE3) rval ^= CPUTEST_FLAG_SSE3SLOW|CPUTEST_FLAG_SSE3;
        }
        /* The Atom processor has SSSE3 support, which is useful in many cases,
         * but sometimes the SSSE3 version is slower than the SSE2 equivalent
         * on the Atom, but is generally faster on other processors supporting
         * SSSE3. This flag allows for selectively disabling certain SSSE3
         * functions on the Atom. */
        if (family == 6 && model == 28)
            rval |= CPUTEST_FLAG_ATOM;
    }

    return rval;
}
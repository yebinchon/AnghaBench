
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ x86_reg ;


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
 int cpuid (int,int,int,int,int) ;
 int strncmp (char*,char*,int) ;
 int xgetbv (int ,int,int) ;

int ff_get_cpu_flags_x86(void)
{
    int rval = 0;
    int eax, ebx, ecx, edx;
    int max_std_level, max_ext_level, std_caps=0, ext_caps=0;
    int family=0, model=0;
    union { int i[3]; char c[12]; } vendor;
    cpuid(0, max_std_level, vendor.i[0], vendor.i[2], vendor.i[1]);

    if(max_std_level >= 1){
        cpuid(1, eax, ebx, ecx, std_caps);
        family = ((eax>>8)&0xf) + ((eax>>20)&0xff);
        model = ((eax>>4)&0xf) + ((eax>>12)&0xf0);


 if (std_caps & (1<<15))
     rval |= CPUTEST_FLAG_CMOV;

        if (std_caps & (1<<23))
            rval |= CPUTEST_FLAG_MMX;
        if (std_caps & (1<<25))
            rval |= CPUTEST_FLAG_MMX2

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


        if ((ecx & 0x18000000) == 0x18000000) {

            xgetbv(0, eax, edx);
            if ((eax & 0x6) == 0x6)
                rval |= CPUTEST_FLAG_AVX;
        }


                  ;
    }

    cpuid(0x80000000, max_ext_level, ebx, ecx, edx);

    if(max_ext_level >= 0x80000001){
        cpuid(0x80000001, eax, ebx, ecx, ext_caps);
        if (ext_caps & (1U<<31))
            rval |= CPUTEST_FLAG_3DNOW;
        if (ext_caps & (1U<<30))
            rval |= CPUTEST_FLAG_3DNOWEXT;
        if (ext_caps & (1U<<23))
            rval |= CPUTEST_FLAG_MMX;
        if (ext_caps & (1U<<22))
            rval |= CPUTEST_FLAG_MMX2;
        if (!strncmp(vendor.c, "AuthenticAMD", 12) &&
            rval & CPUTEST_FLAG_SSE2 && !(ecx & 0x00000040)) {
            rval |= CPUTEST_FLAG_SSE2SLOW;
        }
    }

    if (!strncmp(vendor.c, "GenuineIntel", 12)) {
        if (family == 6 && (model == 9 || model == 13 || model == 14)) {






            if (rval & CPUTEST_FLAG_SSE2) rval ^= CPUTEST_FLAG_SSE2SLOW|CPUTEST_FLAG_SSE2;
            if (rval & CPUTEST_FLAG_SSE3) rval ^= CPUTEST_FLAG_SSE3SLOW|CPUTEST_FLAG_SSE3;
        }





        if (family == 6 && model == 28)
            rval |= CPUTEST_FLAG_ATOM;
    }

    return rval;
}

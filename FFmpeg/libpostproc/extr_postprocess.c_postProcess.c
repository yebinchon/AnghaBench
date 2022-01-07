
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int pp_mode ;
typedef int (* pp_fn ) (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
typedef int pp_context ;
typedef int int8_t ;
struct TYPE_11__ {int lumMode; } ;
struct TYPE_10__ {int cpuCaps; TYPE_2__ ppMode; } ;
typedef TYPE_2__ PPMode ;
typedef TYPE_1__ PPContext ;


 int AV_CPU_FLAG_3DNOW ;
 int AV_CPU_FLAG_ALTIVEC ;
 int AV_CPU_FLAG_MMX ;
 int AV_CPU_FLAG_MMXEXT ;
 int AV_CPU_FLAG_SSE2 ;
 int BITEXACT ;
 int postProcess_3DNow (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
 int postProcess_C (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
 int postProcess_MMX (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
 int postProcess_MMX2 (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
 int postProcess_SSE2 (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;
 int postProcess_altivec (int const*,int,int *,int,int,int,int const*,int,int,TYPE_1__*) ;

__attribute__((used)) static inline void postProcess(const uint8_t src[], int srcStride, uint8_t dst[], int dstStride, int width, int height,
        const int8_t QPs[], int QPStride, int isColor, pp_mode *vm, pp_context *vc)
{
    pp_fn pp = postProcess_C;
    PPContext *c= (PPContext *)vc;
    PPMode *ppMode= (PPMode *)vm;
    c->ppMode= *ppMode;

    if (!(ppMode->lumMode & BITEXACT)) {
    }

    pp(src, srcStride, dst, dstStride, width, height, QPs, QPStride, isColor, c);
}

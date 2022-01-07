
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int prop; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int CLzmaProps ;
typedef TYPE_1__ CLzmaDec ;


 int LzmaDec_AllocateProbs2 (TYPE_1__*,int *,int *) ;
 int LzmaProps_Decode (int *,int const*,unsigned int) ;
 int RINOK (int ) ;
 int SZ_OK ;

SRes LzmaDec_AllocateProbs(CLzmaDec *p, const uint8_t *props, unsigned propsSize, ISzAlloc *alloc)
{
   CLzmaProps propNew;
   RINOK(LzmaProps_Decode(&propNew, props, propsSize));
   RINOK(LzmaDec_AllocateProbs2(p, &propNew, alloc));
   p->prop = propNew;
   return SZ_OK;
}

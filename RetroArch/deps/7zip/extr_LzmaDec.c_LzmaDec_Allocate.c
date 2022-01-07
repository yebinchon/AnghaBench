
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {size_t dicSize; } ;
struct TYPE_17__ {size_t dicBufSize; TYPE_2__ prop; int * dic; } ;
struct TYPE_15__ {scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CLzmaProps ;
typedef TYPE_3__ CLzmaDec ;


 int LzmaDec_AllocateProbs2 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int LzmaDec_FreeDict (TYPE_3__*,TYPE_1__*) ;
 int LzmaDec_FreeProbs (TYPE_3__*,TYPE_1__*) ;
 int LzmaProps_Decode (TYPE_2__*,int const*,unsigned int) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,size_t) ;

SRes LzmaDec_Allocate(CLzmaDec *p, const uint8_t *props, unsigned propsSize, ISzAlloc *alloc)
{
   CLzmaProps propNew;
   size_t dicBufSize;
   RINOK(LzmaProps_Decode(&propNew, props, propsSize));
   RINOK(LzmaDec_AllocateProbs2(p, &propNew, alloc));
   dicBufSize = propNew.dicSize;
   if (p->dic == 0 || dicBufSize != p->dicBufSize)
   {
      LzmaDec_FreeDict(p, alloc);
      p->dic = (uint8_t *)alloc->Alloc(alloc, dicBufSize);
      if (p->dic == 0)
      {
         LzmaDec_FreeProbs(p, alloc);
         return SZ_ERROR_MEM;
      }
   }
   p->dicBufSize = dicBufSize;
   p->prop = propNew;
   return SZ_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int decoder; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef TYPE_1__ CLzma2Dec ;


 int LZMA_PROPS_SIZE ;
 int Lzma2Dec_GetOldProps (int ,int *) ;
 int LzmaDec_Allocate (int *,int *,int,int *) ;
 int RINOK (int ) ;

SRes Lzma2Dec_Allocate(CLzma2Dec *p, uint8_t prop, ISzAlloc *alloc)
{
   uint8_t props[LZMA_PROPS_SIZE];
   RINOK(Lzma2Dec_GetOldProps(prop, props));
   return LzmaDec_Allocate(&p->decoder, props, LZMA_PROPS_SIZE, alloc);
}

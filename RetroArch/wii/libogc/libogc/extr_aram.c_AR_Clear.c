
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





 int __ARClearArea (int,int) ;
 int __ARExpansionSize ;
 int __ARInternalSize ;

void AR_Clear(u32 flag)
{
 switch(flag) {
  case 129:
   if(__ARInternalSize)
    __ARClearArea(0,__ARInternalSize);
   break;
  case 128:
   if(__ARInternalSize)
    __ARClearArea(0x4000,__ARInternalSize-0x4000);
   break;
  case 130:
   if(__ARInternalSize && __ARExpansionSize)
    __ARClearArea(__ARInternalSize,__ARExpansionSize);
   break;
  default:
   break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* Alloc ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef void* CLzmaEncHandle ;
typedef int CLzmaEnc ;


 int LzmaEnc_Construct (int *) ;
 void* stub1 (TYPE_1__*,int) ;

CLzmaEncHandle LzmaEnc_Create(ISzAlloc *alloc)
{
  void *p;
  p = alloc->Alloc(alloc, sizeof(CLzmaEnc));
  if (p)
    LzmaEnc_Construct((CLzmaEnc *)p);
  return p;
}

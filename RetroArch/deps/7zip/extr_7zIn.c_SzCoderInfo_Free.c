
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Props; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CSzCoderInfo ;


 int Buf_Free (int *,int *) ;
 int SzCoderInfo_Init (TYPE_1__*) ;

void SzCoderInfo_Free(CSzCoderInfo *p, ISzAlloc *alloc)
{
   Buf_Free(&p->Props, alloc);
   SzCoderInfo_Init(p);
}

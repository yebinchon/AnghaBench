
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dic; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CLzmaDec ;


 int stub1 (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void LzmaDec_FreeDict(CLzmaDec *p, ISzAlloc *alloc)
{
   alloc->Free(alloc, p->dic);
   p->dic = 0;
}

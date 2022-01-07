
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pStack; scalar_t__ defaultStack; } ;
struct TYPE_5__ {int userData; int (* free ) (int ,scalar_t__) ;} ;
typedef TYPE_1__ JSON_MemorySuite ;
typedef TYPE_2__* Grammarian ;


 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void Grammarian_FreeAllocations(Grammarian grammarian,
      const JSON_MemorySuite* pMemorySuite)
{
   if (grammarian->pStack != grammarian->defaultStack)
      pMemorySuite->free(pMemorySuite->userData, grammarian->pStack);
}

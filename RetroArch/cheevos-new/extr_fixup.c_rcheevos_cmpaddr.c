
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ address; } ;
typedef TYPE_1__ rcheevos_fixup_t ;



__attribute__((used)) static int rcheevos_cmpaddr(const void* e1, const void* e2)
{
   const rcheevos_fixup_t* f1 = (const rcheevos_fixup_t*)e1;
   const rcheevos_fixup_t* f2 = (const rcheevos_fixup_t*)e2;

   if (f1->address < f2->address)
   {
      return -1;
   }
   else if (f1->address > f2->address)
   {
      return 1;
   }
   else
   {
      return 0;
   }
}

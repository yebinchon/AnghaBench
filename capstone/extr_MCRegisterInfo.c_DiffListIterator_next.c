
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* List; int Val; } ;
typedef scalar_t__ MCPhysReg ;
typedef TYPE_1__ DiffListIterator ;



__attribute__((used)) static bool DiffListIterator_next(DiffListIterator *d)
{
 MCPhysReg D;

 if (d->List == 0)
  return 0;

 D = *d->List;
 d->List++;
 d->Val += D;

 if (!D)
  d->List = 0;

 return (D != 0);
}

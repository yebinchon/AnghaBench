
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* List; int Val; } ;
typedef int MCPhysReg ;
typedef TYPE_1__ DiffListIterator ;



__attribute__((used)) static void DiffListIterator_init(DiffListIterator *d, MCPhysReg InitVal, const MCPhysReg *DiffList)
{
 d->Val = InitVal;
 d->List = DiffList;
}

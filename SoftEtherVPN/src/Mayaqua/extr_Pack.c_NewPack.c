
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elements; } ;
typedef TYPE_1__ PACK ;


 int ComparePackName ;
 int NewListFast (int ) ;
 TYPE_1__* ZeroMallocEx (int,int) ;

PACK *NewPack()
{
 PACK *p;


 p = ZeroMallocEx(sizeof(PACK), 1);


 p->elements = NewListFast(ComparePackName);

 return p;
}

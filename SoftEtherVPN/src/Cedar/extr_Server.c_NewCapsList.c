
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;


 int CompareCaps ;
 int NewListFast (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

CAPSLIST *NewCapsList()
{
 CAPSLIST *caps = ZeroMalloc(sizeof(CAPSLIST));

 caps->CapsList = NewListFast(CompareCaps);

 return caps;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;


 int NewListFast (int *) ;
 int Zero (TYPE_1__*,int) ;

void InitCapsList(CAPSLIST *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(CAPSLIST));
 t->CapsList = NewListFast(((void*)0));
}

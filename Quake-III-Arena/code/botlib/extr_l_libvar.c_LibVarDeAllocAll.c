
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ libvar_t ;


 int LibVarDeAlloc (TYPE_1__*) ;
 TYPE_1__* libvarlist ;

void LibVarDeAllocAll(void)
{
 libvar_t *v;

 for (v = libvarlist; v; v = libvarlist)
 {
  libvarlist = libvarlist->next;
  LibVarDeAlloc(v);
 }
 libvarlist = ((void*)0);
}

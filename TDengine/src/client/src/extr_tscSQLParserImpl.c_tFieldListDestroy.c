
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p; } ;
typedef TYPE_1__ tFieldList ;


 int free (TYPE_1__*) ;

void tFieldListDestroy(tFieldList *pList) {
  if (pList == ((void*)0)) return;

  free(pList->p);
  free(pList);
}

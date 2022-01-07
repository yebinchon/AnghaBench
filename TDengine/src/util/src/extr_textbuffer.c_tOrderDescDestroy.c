
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pSchema; } ;
typedef TYPE_1__ tOrderDescriptor ;


 int tColModelDestroy (int ) ;
 int tfree (TYPE_1__*) ;

void tOrderDescDestroy(tOrderDescriptor *pDesc) {
  if (pDesc == ((void*)0)) {
    return;
  }

  tColModelDestroy(pDesc->pSchema);
  tfree(pDesc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* meterList; int * idPool; } ;
typedef TYPE_1__ SVgObj ;


 int taosIdPoolCleanUp (int *) ;
 int tfree (void*) ;

void *mgmtVgroupActionDestroy(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  if (pVgroup->idPool) {
    taosIdPoolCleanUp(pVgroup->idPool);
    pVgroup->idPool = ((void*)0);
  }
  if (pVgroup->meterList) tfree(pVgroup->meterList);
  tfree(row);
  return ((void*)0);
}

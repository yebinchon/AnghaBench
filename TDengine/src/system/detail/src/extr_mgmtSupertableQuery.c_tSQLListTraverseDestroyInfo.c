
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q; } ;
typedef TYPE_1__ tQueryInfo ;


 int free (void*) ;
 int tVariantDestroy (int *) ;

void tSQLListTraverseDestroyInfo(void* param) {
  if (param == ((void*)0)) {
    return;
  }

  tQueryInfo* pInfo = (tQueryInfo*)param;
  tVariantDestroy(&(pInfo->q));
  free(param);
}

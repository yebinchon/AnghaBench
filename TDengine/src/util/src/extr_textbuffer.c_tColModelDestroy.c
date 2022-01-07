
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tColModel ;


 int tfree (int *) ;

void tColModelDestroy(tColModel *pModel) {
  if (pModel == ((void*)0)) {
    return;
  }

  tfree(pModel);
}

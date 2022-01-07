
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOrderDescriptor ;
typedef int tExtMemBuffer ;
typedef int tColModel ;
typedef size_t int32_t ;


 int tColModelDestroy (int *) ;
 int tExtMemBufferDestroy (int **) ;
 int tOrderDescDestroy (int *) ;
 int tfree (int **) ;

void tscLocalReducerEnvDestroy(tExtMemBuffer **pMemBuffer, tOrderDescriptor *pDesc, tColModel *pFinalModel,
                               int32_t numOfVnodes) {
  tColModelDestroy(pFinalModel);
  tOrderDescDestroy(pDesc);
  for (int32_t i = 0; i < numOfVnodes; ++i) {
    tExtMemBufferDestroy(&pMemBuffer[i]);
  }

  tfree(pMemBuffer);
}

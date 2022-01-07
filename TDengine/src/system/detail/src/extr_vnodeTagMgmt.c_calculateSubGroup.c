
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOrderDescriptor ;
typedef int int32_t ;
typedef int (* __ext_compar_fn_t ) (void*,void*,int *) ;


 int assert (int) ;
 scalar_t__ malloc (int) ;

int32_t *calculateSubGroup(void **pSids, int32_t numOfMeters, int32_t *numOfSubset, tOrderDescriptor *pOrderDesc,
                           __ext_compar_fn_t compareFn) {
  int32_t *starterPos = (int32_t *)malloc((numOfMeters + 1) * sizeof(int32_t));
  starterPos[0] = 0;

  *numOfSubset = 1;

  for (int32_t i = 1; i < numOfMeters; ++i) {
    int32_t ret = compareFn(pSids[i - 1], pSids[i], pOrderDesc);
    if (ret != 0) {
      assert(ret == -1);
      starterPos[(*numOfSubset)++] = i;
    }
  }

  starterPos[*numOfSubset] = numOfMeters;
  assert(*numOfSubset <= numOfMeters);

  return starterPos;
}

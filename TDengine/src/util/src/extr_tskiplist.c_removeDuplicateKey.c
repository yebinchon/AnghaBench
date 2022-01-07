
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSkipListKey ;
typedef int pKey ;
typedef int int32_t ;
typedef int (* __compar_fn_t ) (int *,int *) ;


 int qsort (int *,int,int,int (*) (int *,int *)) ;

__attribute__((used)) static void removeDuplicateKey(tSkipListKey *pKey, int32_t *numOfKey, __compar_fn_t comparator) {
  if (*numOfKey == 1) {
    return;
  }

  qsort(pKey, *numOfKey, sizeof(pKey[0]), comparator);
  int32_t i = 0, j = 1;

  while (i < (*numOfKey) && j < (*numOfKey)) {
    int32_t ret = comparator(&pKey[i], &pKey[j]);
    if (ret == 0) {
      j++;
    } else {
      pKey[i + 1] = pKey[j];
      i++;
      j++;
    }
  }

  (*numOfKey) = i + 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {int numOfFilters; int * filterInfo; } ;
typedef int SColumnFilterInfo ;
typedef TYPE_1__ SColumnBase ;


 int assert (int) ;
 int * calloc (int,int) ;
 int tscColumnFilterInfoCopy (int *,int *) ;

void tscColumnBaseCopy(SColumnBase* dst, const SColumnBase* src) {
  assert (src != ((void*)0) && dst != ((void*)0));

  *dst = *src;

  if (src->numOfFilters > 0) {
    dst->filterInfo = calloc(1, src->numOfFilters * sizeof(SColumnFilterInfo));

    for (int32_t j = 0; j < src->numOfFilters; ++j) {
      tscColumnFilterInfoCopy(&dst->filterInfo[j], &src->filterInfo[j]);
    }
  } else {
    assert(src->filterInfo == ((void*)0));
  }
}

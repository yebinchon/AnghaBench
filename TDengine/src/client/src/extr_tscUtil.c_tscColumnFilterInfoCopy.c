
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filterOnBinary; scalar_t__ lowerRelOptr; scalar_t__ upperRelOptr; scalar_t__ pz; scalar_t__ len; } ;
typedef TYPE_1__ SColumnFilterInfo ;


 scalar_t__ TSDB_RELATION_INVALID ;
 int assert (int) ;
 scalar_t__ calloc (int,size_t) ;
 int memcpy (char*,char*,size_t) ;

void tscColumnFilterInfoCopy(SColumnFilterInfo* dst, const SColumnFilterInfo* src) {
  assert (src != ((void*)0) && dst != ((void*)0));

  assert(src->filterOnBinary == 0 || src->filterOnBinary == 1);
  if (src->lowerRelOptr == TSDB_RELATION_INVALID && src->upperRelOptr == TSDB_RELATION_INVALID) {
    assert(0);
  }

  *dst = *src;
  if (dst->filterOnBinary) {
    size_t len = (size_t) dst->len + 1;
    dst->pz = calloc(1, len);
    memcpy((char*) dst->pz, (char*) src->pz, (size_t) len);
  }
}

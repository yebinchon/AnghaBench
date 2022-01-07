
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numOfPoints; } ;
struct TYPE_6__ {scalar_t__ pos; } ;
typedef TYPE_1__ SQuery ;
typedef TYPE_2__ SCacheBlock ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_1__*) ;

__attribute__((used)) static void setStartPositionForCacheBlock(SQuery *pQuery, SCacheBlock *pBlock, bool *firstCheckSlot) {
  if (!(*firstCheckSlot)) {
    if (QUERY_IS_ASC_QUERY(pQuery)) {
      pQuery->pos = 0;
    } else {
      pQuery->pos = pBlock->numOfPoints - 1;
    }
  } else {
    (*firstCheckSlot) = 0;
  }
}

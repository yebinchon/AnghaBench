
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ keyFirst; scalar_t__ keyLast; } ;
struct TYPE_6__ {scalar_t__ lastKey; scalar_t__ ekey; } ;
typedef TYPE_1__ SQuery ;
typedef TYPE_2__ SBlockInfo ;


 scalar_t__ requireTimestamp (TYPE_1__*) ;

bool needPrimaryTimestampCol(SQuery *pQuery, SBlockInfo *pBlockInfo) {




  bool loadPrimaryTS = (pQuery->lastKey >= pBlockInfo->keyFirst && pQuery->lastKey <= pBlockInfo->keyLast) ||
                       (pQuery->ekey >= pBlockInfo->keyFirst && pQuery->ekey <= pBlockInfo->keyLast) ||
                       requireTimestamp(pQuery);

  return loadPrimaryTS;
}

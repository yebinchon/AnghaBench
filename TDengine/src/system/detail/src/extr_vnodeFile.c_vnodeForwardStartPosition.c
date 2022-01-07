
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int numOfPoints; } ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_9__ {scalar_t__ numOfFilterCols; int pos; int numOfBlocks; TYPE_1__ limit; } ;
typedef int SVnodeObj ;
typedef TYPE_2__ SQuery ;
typedef int SMeterObj ;
typedef TYPE_3__ SCompBlock ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int forwardInFile (TYPE_2__*,int,int,int *,int *) ;

int vnodeForwardStartPosition(SQuery *pQuery, SCompBlock *pBlock, int32_t slotIdx, SVnodeObj *pVnode, SMeterObj *pObj) {
  int step = QUERY_IS_ASC_QUERY(pQuery) ? 1 : -1;

  if (pQuery->limit.offset > 0 && pQuery->numOfFilterCols == 0) {
    int maxReads = QUERY_IS_ASC_QUERY(pQuery) ? pBlock->numOfPoints - pQuery->pos : pQuery->pos + 1;

    if (pQuery->limit.offset < maxReads) {
      if (QUERY_IS_ASC_QUERY(pQuery)) {
        pQuery->pos += pQuery->limit.offset;
      } else {
        pQuery->pos -= pQuery->limit.offset;
      }

      pQuery->limit.offset = 0;

    } else {
      pQuery->limit.offset -= maxReads;
      slotIdx += step;

      return forwardInFile(pQuery, slotIdx, step, pVnode, pObj);
    }
  }

  return pQuery->numOfBlocks;
}

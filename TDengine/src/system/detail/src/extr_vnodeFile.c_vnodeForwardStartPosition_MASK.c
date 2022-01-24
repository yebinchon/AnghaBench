#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_10__ {int numOfPoints; } ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_9__ {scalar_t__ numOfFilterCols; int pos; int numOfBlocks; TYPE_1__ limit; } ;
typedef  int /*<<< orphan*/  SVnodeObj ;
typedef  TYPE_2__ SQuery ;
typedef  int /*<<< orphan*/  SMeterObj ;
typedef  TYPE_3__ SCompBlock ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(SQuery *pQuery, SCompBlock *pBlock, int32_t slotIdx, SVnodeObj *pVnode, SMeterObj *pObj) {
  int step = FUNC0(pQuery) ? 1 : -1;

  if (pQuery->limit.offset > 0 && pQuery->numOfFilterCols == 0) {
    int maxReads = FUNC0(pQuery) ? pBlock->numOfPoints - pQuery->pos : pQuery->pos + 1;

    if (pQuery->limit.offset < maxReads) {  // start position in current block
      if (FUNC0(pQuery)) {
        pQuery->pos += pQuery->limit.offset;
      } else {
        pQuery->pos -= pQuery->limit.offset;
      }

      pQuery->limit.offset = 0;

    } else {
      pQuery->limit.offset -= maxReads;
      slotIdx += step;

      return FUNC1(pQuery, slotIdx, step, pVnode, pObj);
    }
  }

  return pQuery->numOfBlocks;
}
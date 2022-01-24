#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_12__ {int numOfCols; void** pNextPoint; void** pPrevPoint; } ;
struct TYPE_11__ {int numOfCols; TYPE_2__* colList; } ;
struct TYPE_9__ {size_t bytes; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
typedef  TYPE_3__ SQuery ;
typedef  TYPE_4__ SPointInterpoSupporter ;

/* Variables and functions */
 int POINTER_BYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,size_t) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (int) ; 

void FUNC5(SQuery *pQuery, SPointInterpoSupporter *pInterpoSupport) {
  if (FUNC3(pQuery)) {
    pInterpoSupport->pPrevPoint = FUNC4(pQuery->numOfCols * POINTER_BYTES);
    pInterpoSupport->pNextPoint = FUNC4(pQuery->numOfCols * POINTER_BYTES);

    pInterpoSupport->numOfCols = pQuery->numOfCols;

    /* get appropriated size for one row data source*/
    int32_t len = 0;
    for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
      len += pQuery->colList[i].data.bytes;
    }

    FUNC1(FUNC0(pQuery));

    void *prev = FUNC2(1, len);
    void *next = FUNC2(1, len);

    int32_t offset = 0;

    for (int32_t i = 0, j = 0; i < pQuery->numOfCols; ++i, ++j) {
      pInterpoSupport->pPrevPoint[j] = prev + offset;
      pInterpoSupport->pNextPoint[j] = next + offset;

      offset += pQuery->colList[i].data.bytes;
    }
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ columnIndex; int /*<<< orphan*/  tableIndex; } ;
struct TYPE_15__ {int num; TYPE_5__* ids; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {scalar_t__ numOfColumns; scalar_t__ numOfTags; } ;
struct TYPE_13__ {TYPE_3__* pMeterMeta; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/  SSqlCmd ;
typedef  TYPE_1__ SSchema ;
typedef  TYPE_2__ SMeterMetaInfo ;
typedef  TYPE_3__ SMeterMeta ;
typedef  TYPE_4__ SColumnList ;
typedef  TYPE_5__ SColumnIndex ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_3__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC5(SSqlCmd* pCmd, SColumnIndex* pIndex, int32_t startPos) {
  SMeterMetaInfo* pMeterMetaInfo = FUNC4(pCmd, pIndex->tableIndex);

  int32_t     numOfTotalColumns = 0;
  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;
  SSchema*    pSchema = FUNC3(pMeterMeta);

  if (FUNC0(pMeterMetaInfo)) {
    numOfTotalColumns = pMeterMeta->numOfColumns + pMeterMeta->numOfTags;
  } else {
    numOfTotalColumns = pMeterMeta->numOfColumns;
  }

  for (int32_t j = 0; j < numOfTotalColumns; ++j) {
    FUNC1(pCmd, startPos + j, j, pIndex->tableIndex);

    pIndex->columnIndex = j;
    SColumnList ids = {0};
    ids.ids[0] = *pIndex;

    // tag columns do not add to source list
    ids.num = (j >= pMeterMeta->numOfColumns) ? 0 : 1;

    FUNC2(pCmd, startPos + j, &ids, pSchema[j].bytes, pSchema[j].type, pSchema[j].name);
  }

  return numOfTotalColumns;
}
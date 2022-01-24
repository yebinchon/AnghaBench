#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_9__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_8__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_7__ {scalar_t__ numOfTags; scalar_t__ numOfColumns; } ;
typedef  TYPE_2__ SSqlObj ;
typedef  int /*<<< orphan*/  SSqlCmd ;
typedef  TYPE_3__ SMeterMetaInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,scalar_t__) ; 

int FUNC2(SSqlObj *pSql) {
  SSqlCmd *       pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = FUNC0(pCmd, 0);

  int32_t numOfRes = pMeterMetaInfo->pMeterMeta->numOfColumns + pMeterMetaInfo->pMeterMeta->numOfTags;

  return FUNC1(pSql, numOfRes);
}
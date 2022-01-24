#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* pMeterDataInfo; } ;
struct TYPE_6__ {scalar_t__ code; int /*<<< orphan*/  query; TYPE_2__* pMeterQuerySupporter; } ;
typedef  int /*<<< orphan*/  SQuery ;
typedef  TYPE_1__ SQInfo ;
typedef  TYPE_2__ SMeterQuerySupportObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 void* FUNC1 (TYPE_1__*,void*) ; 
 void* FUNC2 (TYPE_1__*,void*) ; 

__attribute__((used)) static void FUNC3(SQInfo *pQInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQuery *               pQuery = &pQInfo->query;

  if (FUNC0(pQuery)) {
    pSupporter->pMeterDataInfo = FUNC2(pQInfo, pSupporter->pMeterDataInfo);
    if (pQInfo->code != TSDB_CODE_SUCCESS) {
      return;
    }

    pSupporter->pMeterDataInfo = FUNC1(pQInfo, pSupporter->pMeterDataInfo);
  } else {
    pSupporter->pMeterDataInfo = FUNC1(pQInfo, pSupporter->pMeterDataInfo);
    if (pQInfo->code != TSDB_CODE_SUCCESS) {
      return;
    }

    pSupporter->pMeterDataInfo = FUNC2(pQInfo, pSupporter->pMeterDataInfo);
  }
}
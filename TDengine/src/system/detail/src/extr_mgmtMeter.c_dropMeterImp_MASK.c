#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  numOfTimeSeries; } ;
struct TYPE_17__ {TYPE_1__ acctInfo; } ;
struct TYPE_14__ {int /*<<< orphan*/  vgId; } ;
struct TYPE_16__ {int numOfColumns; TYPE_2__ gid; } ;
struct TYPE_15__ {scalar_t__ numOfMeters; } ;
typedef  TYPE_3__ SVgObj ;
typedef  TYPE_4__ STabObj ;
typedef  int /*<<< orphan*/  SDbObj ;
typedef  TYPE_5__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_OTHERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  meterSdb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static int FUNC5(SDbObj *pDb, STabObj * pMeter, SAcctObj *pAcct) {
  SVgObj *  pVgroup;

  if (pAcct != NULL) pAcct->acctInfo.numOfTimeSeries -= (pMeter->numOfColumns - 1);
  
  pVgroup = FUNC2(pMeter->gid.vgId);
  if (pVgroup == NULL) return TSDB_CODE_OTHERS;

  FUNC0(pMeter->numOfColumns - 1);
  FUNC3(pMeter, pVgroup);
  FUNC4(meterSdb, pMeter);

  if (pVgroup->numOfMeters <= 0) FUNC1(pDb, pVgroup);

  return 0;
}
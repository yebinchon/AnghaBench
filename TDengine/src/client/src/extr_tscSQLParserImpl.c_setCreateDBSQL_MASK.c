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
typedef  int /*<<< orphan*/  tDCLSQL ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  dbname; } ;
struct TYPE_9__ {TYPE_2__ dbOpt; } ;
struct TYPE_7__ {TYPE_3__* pDCLInfo; int /*<<< orphan*/  sqlType; } ;
typedef  TYPE_1__ SSqlInfo ;
typedef  int /*<<< orphan*/  SSQLToken ;
typedef  TYPE_2__ SCreateDBInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC2(SSqlInfo *pInfo, int32_t type, SSQLToken *pToken, SCreateDBInfo *pDB, SSQLToken *pIgExists) {
  pInfo->sqlType = type;
  if (pInfo->pDCLInfo == NULL) {
    pInfo->pDCLInfo = FUNC0(1, sizeof(tDCLSQL));
  }

  pInfo->pDCLInfo->dbOpt = *pDB;
  pInfo->pDCLInfo->dbOpt.dbname = *pToken;

  FUNC1(pInfo->pDCLInfo, pIgExists);
}
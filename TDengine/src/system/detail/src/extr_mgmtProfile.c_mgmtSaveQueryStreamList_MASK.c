#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int numOfQueries; } ;
struct TYPE_9__ {int numOfQueries; int /*<<< orphan*/  numOfStreams; } ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; TYPE_1__ acctInfo; } ;
struct TYPE_11__ {TYPE_2__* pSList; TYPE_5__* pQList; TYPE_4__* pAcct; } ;
struct TYPE_10__ {scalar_t__ numOfStreams; } ;
typedef  TYPE_2__ SSList ;
typedef  int /*<<< orphan*/  SQList ;
typedef  int /*<<< orphan*/  SQDesc ;
typedef  TYPE_3__ SConnObj ;
typedef  TYPE_4__ SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (TYPE_5__*,int) ; 

int FUNC4(char *cont, int contLen, SConnObj *pConn) {
  SAcctObj *pAcct = pConn->pAcct;

  if (contLen <= 0 || pAcct == NULL) {
    return 0;
  }

  FUNC1(&pAcct->mutex);

  if (pConn->pQList) {
    pAcct->acctInfo.numOfQueries -= pConn->pQList->numOfQueries;
    pAcct->acctInfo.numOfStreams -= pConn->pSList->numOfStreams;
  }

  pConn->pQList = FUNC3(pConn->pQList, contLen);
  FUNC0(pConn->pQList, cont, contLen);

  pConn->pSList = (SSList *)(((char *)pConn->pQList) + pConn->pQList->numOfQueries * sizeof(SQDesc) + sizeof(SQList));

  pAcct->acctInfo.numOfQueries += pConn->pQList->numOfQueries;
  pAcct->acctInfo.numOfStreams += pConn->pSList->numOfStreams;

  FUNC2(&pAcct->mutex);

  return 0;
}
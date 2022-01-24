#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  msgType; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_CREATE_ACCT ; 
 int FUNC0 (TYPE_2__*) ; 

int FUNC1(SSqlObj *pSql) {
  int msgLen = FUNC0(pSql);
  pSql->cmd.msgType = TSDB_MSG_TYPE_CREATE_ACCT;
  return msgLen;
}
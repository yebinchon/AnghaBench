#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_5__ {int numOfCols; int count; int /*<<< orphan*/  payload; } ;
struct TYPE_4__ {TYPE_2__ cmd; } ;
typedef  int /*<<< orphan*/  STagData ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlCmd ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  int /*<<< orphan*/  SMgmtHead ;
typedef  int /*<<< orphan*/  SCreateTableMsg ;

/* Variables and functions */
 int TSDB_EXTRA_PAYLOAD_SIZE ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(SSqlObj *pSql) {
  SSqlCmd *pCmd = &(pSql->cmd);

  int32_t size = FUNC0() + sizeof(SMgmtHead) + sizeof(SCreateTableMsg);

  if (pCmd->numOfCols == 0 && pCmd->count == 0) {
    size += sizeof(STagData);
  } else {
    size += sizeof(SSchema) * (pCmd->numOfCols + pCmd->count);
  }

  if (FUNC1(pCmd->payload) > 0) size += FUNC1(pCmd->payload) + 1;

  return size + TSDB_EXTRA_PAYLOAD_SIZE;
}
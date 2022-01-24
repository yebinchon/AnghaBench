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
struct TYPE_9__ {int /*<<< orphan*/ * msg; void* thandle; TYPE_2__* ahandle; int /*<<< orphan*/  fp; } ;
struct TYPE_7__ {int /*<<< orphan*/  code; } ;
struct TYPE_8__ {TYPE_1__ res; struct TYPE_8__* signature; } ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSchedMsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  tscProcessAsyncRes ; 
 int /*<<< orphan*/  tscQhandle ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,...) ; 

void FUNC2(SSqlObj *pSql) {
  if (pSql == NULL || pSql->signature != pSql) {
    FUNC1("%p SqlObj is freed, not add into queue async res", pSql);
    return;
  } else {
    FUNC1("%p add into queued async res, code:%d", pSql, pSql->res.code);
  }

  SSchedMsg schedMsg;
  schedMsg.fp = tscProcessAsyncRes;
  schedMsg.ahandle = pSql;
  schedMsg.thandle = (void *)1;
  schedMsg.msg = NULL;
  FUNC0(tscQhandle, &schedMsg);
}
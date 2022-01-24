#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  code; } ;
struct TYPE_10__ {TYPE_1__ res; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  pTimer; TYPE_3__* pSql; int /*<<< orphan*/ * signature; } ;
typedef  TYPE_2__ STscObj ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  globalCode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*) ; 

void FUNC5(STscObj* pObj) {
  pObj->signature = NULL;
  SSqlObj* pSql = pObj->pSql;
  globalCode = pSql->res.code;

  FUNC1(&(pObj->pTimer));
  FUNC3(pSql);

  FUNC0(&pObj->mutex);
  FUNC4("%p DB connection is closed", pObj);
  FUNC2(pObj);
}
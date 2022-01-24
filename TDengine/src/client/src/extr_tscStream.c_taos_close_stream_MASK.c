#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* signature; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pSql; int /*<<< orphan*/  pTimer; } ;
typedef  int /*<<< orphan*/  TAOS_STREAM ;
typedef  TYPE_1__ SSqlStream ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,TYPE_1__*) ; 

void FUNC6(TAOS_STREAM *handle) {
  SSqlStream *pStream = (SSqlStream *)handle;

  SSqlObj *pSql = (SSqlObj *)FUNC0(&pStream->pSql, 0);
  if (pSql == NULL) {
    return;
  }

  /*
   * stream may be closed twice, 1. drop dst table, 2. kill stream
   * Here, we need a check before release memory
   */
  if (pSql->signature == pSql) {
    FUNC4(pStream, pSql);

    FUNC1(&(pStream->pTimer));
    FUNC3(pSql);
    pStream->pSql = NULL;

    FUNC5("%p stream:%p is closed", pSql, pStream);
    FUNC2(pStream);
  }
}
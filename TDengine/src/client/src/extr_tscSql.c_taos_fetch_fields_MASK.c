#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * pFields; } ;
struct TYPE_5__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_6__ {TYPE_2__ cmd; struct TYPE_6__* signature; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */

TAOS_FIELD *FUNC0(TAOS_RES *res) {
  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql == NULL || pSql->signature != pSql) return 0;

  return pSql->cmd.fieldsInfo.pFields;
}
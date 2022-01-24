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
typedef  int int8_t ;
struct TYPE_6__ {TYPE_2__* pSql; struct TYPE_6__* signature; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_3__ STscObj ;

/* Variables and functions */
 int TSDB_CODE_OTHERS ; 
 int globalCode ; 

int FUNC0(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;
  int      code;

  if (pObj == NULL || pObj->signature != pObj) return globalCode;

  if ((int8_t)(pObj->pSql->res.code) == -1)
    code = TSDB_CODE_OTHERS;
  else
    code = pObj->pSql->res.code;

  return code;
}
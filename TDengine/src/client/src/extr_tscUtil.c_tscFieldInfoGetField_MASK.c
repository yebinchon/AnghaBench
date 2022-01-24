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
typedef  size_t int32_t ;
struct TYPE_4__ {size_t numOfOutputCols; int /*<<< orphan*/ * pFields; } ;
struct TYPE_5__ {TYPE_1__ fieldsInfo; } ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;
typedef  TYPE_2__ SSqlCmd ;

/* Variables and functions */

TAOS_FIELD* FUNC0(SSqlCmd* pCmd, int32_t index) {
  if (index >= pCmd->fieldsInfo.numOfOutputCols) {
    return NULL;
  }

  return &pCmd->fieldsInfo.pFields[index];
}
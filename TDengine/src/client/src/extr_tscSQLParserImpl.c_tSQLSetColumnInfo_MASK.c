#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ n; int /*<<< orphan*/  z; } ;
struct TYPE_6__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  type; scalar_t__* name; } ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  TYPE_2__ SSQLToken ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(TAOS_FIELD *pField, SSQLToken *pName, TAOS_FIELD *pType) {
  int32_t maxLen = sizeof(pField->name) / sizeof(pField->name[0]);
  /* truncate the column name */
  if (pName->n >= maxLen) {
    pName->n = maxLen - 1;
  }

  FUNC0(pField->name, pName->z, pName->n);
  pField->name[pName->n] = 0;

  pField->type = pType->type;
  pField->bytes = pType->bytes;
}
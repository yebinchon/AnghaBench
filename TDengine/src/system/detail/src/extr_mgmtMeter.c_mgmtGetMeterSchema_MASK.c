#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ schema; int /*<<< orphan*/  pTagData; } ;
typedef  TYPE_1__ STabObj ;
typedef  int /*<<< orphan*/  SSchema ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

SSchema *FUNC3(STabObj *pMeter) {
  if (pMeter == NULL) {
    return NULL;
  }

  if (!FUNC2(pMeter)) {
    return (SSchema *)pMeter->schema;
  }

  STabObj *pMetric = FUNC1(pMeter->pTagData);
  FUNC0(pMetric != NULL);

  return (SSchema *)pMetric->schema;
}
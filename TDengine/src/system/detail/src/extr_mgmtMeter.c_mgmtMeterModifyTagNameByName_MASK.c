#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  meterId; } ;
typedef  TYPE_1__ STabObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_APP_ERROR ; 
 int /*<<< orphan*/  TSDB_CODE_INVALID_MSG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char const*) ; 

int32_t FUNC4(STabObj *pMetric, const char *oname, const char *nname) {
  if (pMetric == NULL || (!FUNC2(pMetric))) return TSDB_CODE_APP_ERROR;

  int index = FUNC1(pMetric, oname);
  if (index < 0) {
    // Tag name does not exist
    FUNC0("Failed to modify table %s tag column, oname: %s, nname: %s", pMetric->meterId, oname, nname);
    return TSDB_CODE_INVALID_MSG_TYPE;
  }

  return FUNC3(pMetric, index, nname);
}
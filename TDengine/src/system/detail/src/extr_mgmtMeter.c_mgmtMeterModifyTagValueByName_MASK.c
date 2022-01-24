#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  pTagData; } ;
typedef  TYPE_1__ STabObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_APP_ERROR ; 
 int /*<<< orphan*/  TSDB_CODE_INVALID_MSG_TYPE ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 

int32_t FUNC4(STabObj *pMeter, char *tagName, char *nContent) {
  if (pMeter == NULL || tagName == NULL || nContent == NULL || (!FUNC2(pMeter)))
    return TSDB_CODE_INVALID_MSG_TYPE;

  STabObj *pMetric = FUNC1(pMeter->pTagData);
  if (pMetric == NULL) return TSDB_CODE_APP_ERROR;

  int col = FUNC0(pMetric, tagName);
  if (col < 0) return TSDB_CODE_APP_ERROR;

  return FUNC3(pMeter, col, nContent);
}
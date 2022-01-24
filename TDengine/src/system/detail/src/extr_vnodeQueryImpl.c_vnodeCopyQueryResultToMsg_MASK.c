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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_9__ {scalar_t__ numOfOutputCols; TYPE_1__** sdata; int /*<<< orphan*/ * pSelectExpr; } ;
struct TYPE_10__ {TYPE_2__ query; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ SQuery ;
typedef  TYPE_3__ SQInfo ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int32_t FUNC12(void *handle, char *data, int32_t numOfRows, int32_t* size) {
  SQInfo *pQInfo = (SQInfo *)handle;
  SQuery *   pQuery = &pQInfo->query;

  FUNC1(pQuery->pSelectExpr != NULL && pQuery->numOfOutputCols > 0);

  // load data from file to msg buffer
  if (FUNC6(pQuery)) {
    int32_t fd = FUNC8(pQuery->sdata[0]->data, O_RDONLY, 0666);

    // make sure file exist
    if (FUNC0(fd)) {
      size_t s = FUNC7(fd, 0, SEEK_END);
      FUNC4("QInfo:%p ts comp data return, file:%s, size:%ld", pQInfo, pQuery->sdata[0]->data, size);

      FUNC7(fd, 0, SEEK_SET);
      FUNC9(fd, data, s);
      FUNC2(fd);

      FUNC11(pQuery->sdata[0]->data);
    } else {
      FUNC3("QInfo:%p failed to open tmp file to send ts-comp data to client, path:%s, reason:%s", pQInfo,
             pQuery->sdata[0]->data, FUNC10(errno));
    }
  } else {
    FUNC5(pQInfo, numOfRows, data, size);
  }

  return numOfRows;
}
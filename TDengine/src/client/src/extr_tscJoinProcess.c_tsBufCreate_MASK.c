#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  order; } ;
struct TYPE_13__ {int autoDelete; int tsOrder; TYPE_1__ cur; int /*<<< orphan*/  numOfVnodes; int /*<<< orphan*/ * f; int /*<<< orphan*/  path; } ;
struct TYPE_12__ {int /*<<< orphan*/  tsOrder; int /*<<< orphan*/  numOfVnode; int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ STSBufFileHeader ;
typedef  TYPE_3__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  TSQL_SO_ASC ; 
 int /*<<< orphan*/  TS_COMP_FILE_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

STSBuf* FUNC7(bool autoDelete) {
  STSBuf* pTSBuf = FUNC2(1, sizeof(STSBuf));
  if (pTSBuf == NULL) {
    return NULL;
  }

  FUNC5("join", pTSBuf->path);
  pTSBuf->f = FUNC3(pTSBuf->path, "w+");
  if (pTSBuf->f == NULL) {
    FUNC4(pTSBuf);
    return NULL;
  }

  FUNC1(pTSBuf);

  // update the header info
  STSBufFileHeader header = {.magic = TS_COMP_FILE_MAGIC, .numOfVnode = pTSBuf->numOfVnodes, .tsOrder = TSQL_SO_ASC};
  FUNC0(pTSBuf, &header);

  FUNC6(pTSBuf);
  pTSBuf->cur.order = TSQL_SO_ASC;

  pTSBuf->autoDelete = autoDelete;
  pTSBuf->tsOrder = -1;

  return pTSBuf;
}
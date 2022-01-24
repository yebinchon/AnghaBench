#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  offset; scalar_t__ vnode; scalar_t__ compLen; scalar_t__ numOfBlocks; } ;
struct TYPE_15__ {TYPE_1__ info; } ;
struct TYPE_14__ {int /*<<< orphan*/  f; scalar_t__ tsOrder; scalar_t__ numOfVnodes; int /*<<< orphan*/  fileSize; } ;
struct TYPE_13__ {scalar_t__ tsOrder; scalar_t__ numOfVnode; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ STSVnodeBlockInfo ;
typedef  TYPE_2__ STSBufFileHeader ;
typedef  TYPE_3__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ TSQL_SO_ASC ; 
 scalar_t__ TSQL_SO_DESC ; 
 int /*<<< orphan*/  TS_COMP_FILE_MAGIC ; 
 TYPE_6__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_3__* FUNC9 (int) ; 

STSBuf* FUNC10(const char* pData, int32_t numOfBlocks, int32_t len, int32_t order) {
  STSBuf* pTSBuf = FUNC9(true);

  STSVnodeBlockInfo* pBlockInfo = &(FUNC2(pTSBuf, 0)->info);
  pBlockInfo->numOfBlocks = numOfBlocks;
  pBlockInfo->compLen = len;
  pBlockInfo->offset = FUNC8();
  pBlockInfo->vnode = 0;

  // update prev vnode length info in file
  FUNC1(pTSBuf, pTSBuf->numOfVnodes - 1, pBlockInfo);

  FUNC5(pTSBuf->f, pBlockInfo->offset, SEEK_SET);
  FUNC7((void*) pData, 1, len, pTSBuf->f);
  pTSBuf->fileSize += len;

  pTSBuf->tsOrder = order;
  FUNC3(order == TSQL_SO_ASC || order == TSQL_SO_DESC);

  STSBufFileHeader header = {
      .magic = TS_COMP_FILE_MAGIC, .numOfVnode = pTSBuf->numOfVnodes, .tsOrder = pTSBuf->tsOrder};
  FUNC0(pTSBuf, &header);

  FUNC6(FUNC4(pTSBuf->f));

  return pTSBuf;
}
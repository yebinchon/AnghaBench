#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_12__ {int numOfVnodes; int /*<<< orphan*/  f; int /*<<< orphan*/  tsOrder; TYPE_1__* pData; TYPE_6__ tsData; } ;
struct TYPE_11__ {int numOfVnode; int /*<<< orphan*/  tsOrder; int /*<<< orphan*/  magic; } ;
struct TYPE_10__ {int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  STSVnodeBlockInfo ;
typedef  TYPE_2__ STSBufFileHeader ;
typedef  TYPE_3__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_COMP_FILE_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6(STSBuf* pTSBuf) {
  if (pTSBuf->tsData.len <= 0) {
    return;
  }

  FUNC5(pTSBuf);
  FUNC4(&pTSBuf->tsData);

  STSVnodeBlockInfo* pBlockInfo = &pTSBuf->pData[pTSBuf->numOfVnodes - 1].info;

  // update prev vnode length info in file
  FUNC1(pTSBuf, pTSBuf->numOfVnodes - 1, pBlockInfo);

  // save the ts order into header
  STSBufFileHeader header = {
      .magic = TS_COMP_FILE_MAGIC, .numOfVnode = pTSBuf->numOfVnodes, .tsOrder = pTSBuf->tsOrder};
  FUNC0(pTSBuf, &header);

  FUNC3(FUNC2(pTSBuf->f));
}
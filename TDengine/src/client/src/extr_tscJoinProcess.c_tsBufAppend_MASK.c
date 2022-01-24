#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_15__ {scalar_t__ tag; } ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ rawBuf; scalar_t__ threshold; } ;
struct TYPE_18__ {int numOfVnodes; scalar_t__ numOfTotal; TYPE_2__ block; TYPE_3__* pData; TYPE_4__ tsData; } ;
struct TYPE_14__ {scalar_t__ vnode; } ;
struct TYPE_16__ {int /*<<< orphan*/  len; TYPE_1__ info; } ;
typedef  TYPE_3__ STSVnodeBlockInfoEx ;
typedef  TYPE_4__ STSList ;
typedef  TYPE_5__ STSBuf ;

/* Variables and functions */
 scalar_t__ TSDB_KEYSIZE ; 
 TYPE_3__* FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

void FUNC8(STSBuf* pTSBuf, int32_t vnodeId, int64_t tag, const char* pData, int32_t len) {
  STSVnodeBlockInfoEx* pBlockInfo = NULL;
  STSList*             ptsData = &pTSBuf->tsData;

  if (pTSBuf->numOfVnodes == 0 || pTSBuf->pData[pTSBuf->numOfVnodes - 1].info.vnode != vnodeId) {
    FUNC7(pTSBuf);
    FUNC5(ptsData);

    pBlockInfo = FUNC0(pTSBuf, vnodeId);
  } else {
    pBlockInfo = &pTSBuf->pData[pTSBuf->numOfVnodes - 1];
  }

  FUNC1(pBlockInfo->info.vnode == vnodeId);

  if (pTSBuf->block.tag != tag && ptsData->len > 0) {
    // new arrived data with different tags value, save current value into disk first
    FUNC7(pTSBuf);
  } else {
    FUNC2(ptsData, len);
  }

  pTSBuf->block.tag = tag;
  FUNC3(ptsData->rawBuf + ptsData->len, pData, (size_t)len);

  // todo check return value
  FUNC4(pTSBuf, pData, len);

  ptsData->len += len;
  pBlockInfo->len += len;

  pTSBuf->numOfTotal += len / TSDB_KEYSIZE;

  if (ptsData->len >= ptsData->threshold) {
    FUNC7(pTSBuf);
    FUNC5(ptsData);
  }

  FUNC6(pTSBuf);
}
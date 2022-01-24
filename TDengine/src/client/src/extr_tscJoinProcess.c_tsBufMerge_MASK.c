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
typedef  int ssize_t ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_13__ {scalar_t__ numOfVnodes; int numOfAlloc; scalar_t__ fileSize; scalar_t__ numOfTotal; int /*<<< orphan*/  f; TYPE_2__* pData; } ;
struct TYPE_11__ {int vnode; scalar_t__ offset; scalar_t__ compLen; scalar_t__ numOfBlocks; } ;
struct TYPE_12__ {TYPE_1__ info; scalar_t__ len; } ;
typedef  TYPE_2__ STSVnodeBlockInfoEx ;
typedef  TYPE_3__ STSBuf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ TS_COMP_FILE_VNODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int32_t FUNC11(STSBuf* pDestBuf, const STSBuf* pSrcBuf, int32_t vnodeId) {
  if (pDestBuf == NULL || pSrcBuf == NULL || pSrcBuf->numOfVnodes <= 0) {
    return 0;
  }

  if (pDestBuf->numOfVnodes + pSrcBuf->numOfVnodes > TS_COMP_FILE_VNODE_MAX) {
    return -1;
  }

  // src can only have one vnode index
  if (pSrcBuf->numOfVnodes > 1) {
    return -1;
  }

  // there are data in buffer, flush to disk first
  FUNC10(pDestBuf);

  // compared with the last vnode id
  if (vnodeId != pDestBuf->pData[pDestBuf->numOfVnodes - 1].info.vnode) {
    int32_t oldSize = pDestBuf->numOfVnodes;
    int32_t newSize = oldSize + pSrcBuf->numOfVnodes;

    if (pDestBuf->numOfAlloc < newSize) {
      pDestBuf->numOfAlloc = newSize;

      STSVnodeBlockInfoEx* tmp = FUNC7(pDestBuf->pData, sizeof(STSVnodeBlockInfoEx) * newSize);
      if (tmp == NULL) {
        return -1;
      }

      pDestBuf->pData = tmp;
    }

    // directly copy the vnode index information
    FUNC5(&pDestBuf->pData[oldSize], pSrcBuf->pData, (size_t)pSrcBuf->numOfVnodes * sizeof(STSVnodeBlockInfoEx));

    // set the new offset value
    for (int32_t i = 0; i < pSrcBuf->numOfVnodes; ++i) {
      STSVnodeBlockInfoEx* pBlockInfoEx = &pDestBuf->pData[i + oldSize];
      pBlockInfoEx->info.offset = (pSrcBuf->pData[i].info.offset - FUNC4()) + pDestBuf->fileSize;
      pBlockInfoEx->info.vnode = vnodeId;
    }

    pDestBuf->numOfVnodes = newSize;
  } else {
    STSVnodeBlockInfoEx* pBlockInfoEx = &pDestBuf->pData[pDestBuf->numOfVnodes - 1];
    pBlockInfoEx->len += pSrcBuf->pData[0].len;
    pBlockInfoEx->info.numOfBlocks += pSrcBuf->pData[0].info.numOfBlocks;
    pBlockInfoEx->info.compLen += pSrcBuf->pData[0].info.compLen;
    pBlockInfoEx->info.vnode = vnodeId;
  }

  int64_t r = FUNC2(pDestBuf->f, 0, SEEK_END);
  FUNC0(r == 0);

  int64_t offset = FUNC4();
  int32_t size = pSrcBuf->fileSize - offset;

#ifdef LINUX
  ssize_t rc = sendfile(fileno(pDestBuf->f), fileno(pSrcBuf->f), &offset, size);
#else
  ssize_t rc = FUNC3(pDestBuf->f, pSrcBuf->f, &offset, size);
#endif
  if (rc == -1) {
    FUNC6("%s\n", FUNC9(errno));
    return -1;
  }

  if (rc != size) {
    FUNC6("%s\n", FUNC9(errno));
    return -1;
  }

  pDestBuf->numOfTotal += pSrcBuf->numOfTotal;

  return 0;
}
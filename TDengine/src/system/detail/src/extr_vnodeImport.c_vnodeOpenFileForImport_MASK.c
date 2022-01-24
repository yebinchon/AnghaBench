#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
struct stat {int st_size; } ;
struct TYPE_17__ {scalar_t__ compInfoOffset; scalar_t__ uid; int numOfBlocks; scalar_t__ last; } ;
struct TYPE_22__ {int hfdSize; int last; int compInfoOffset; int leftOffset; int oldNumOfBlocks; TYPE_14__ compInfo; TYPE_14__* headList; scalar_t__ newBlocks; } ;
struct TYPE_21__ {scalar_t__ fileId; scalar_t__ pos; int slot; TYPE_3__* pObj; } ;
struct TYPE_20__ {size_t vnode; size_t sid; scalar_t__ uid; } ;
struct TYPE_19__ {int maxSessions; } ;
struct TYPE_18__ {scalar_t__ nfd; scalar_t__ commitLastKey; scalar_t__ hfd; scalar_t__ commitFileId; int /*<<< orphan*/  cfn; scalar_t__ commitFirstKey; TYPE_2__ cfg; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SVnodeCfg ;
typedef  TYPE_3__ SMeterObj ;
typedef  TYPE_4__ SImportInfo ;
typedef  TYPE_5__ SHeadInfo ;
typedef  int /*<<< orphan*/  SData ;
typedef  int /*<<< orphan*/  SCompInfo ;
typedef  int /*<<< orphan*/  SCompHeader ;
typedef  int /*<<< orphan*/  SCompBlock ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TSDB_FILE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_14__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__,TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_5__*) ; 
 TYPE_1__* vnodeList ; 
 scalar_t__ FUNC8 (TYPE_1__*,size_t) ; 
 int FUNC9 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ **) ; 

int FUNC10(SImportInfo *pImport, char *payload, SHeadInfo *pHinfo, SData *data[]) {
  SMeterObj  *pObj = pImport->pObj;
  SVnodeObj  *pVnode = &vnodeList[pObj->vnode];
  SVnodeCfg  *pCfg = &pVnode->cfg;
  TSKEY       firstKey = *((TSKEY *)payload);
  struct stat filestat;
  int         sid, rowsBefore = 0;

  if (pVnode->nfd <= 0 || firstKey > pVnode->commitLastKey) {
    if (pVnode->nfd > 0) FUNC7(pObj, pHinfo);

    pVnode->commitFirstKey = firstKey;
    if (FUNC8(pVnode, pObj->sid) < 0) return -1;

    FUNC1(pVnode->hfd, &filestat);
    pHinfo->hfdSize = filestat.st_size;
    pHinfo->newBlocks = 0;
    pHinfo->last = 1;  // by default, new blockes are at the end of block list

    FUNC2(pVnode->hfd, TSDB_FILE_HEADER_LEN, SEEK_SET);
    FUNC4(pVnode->hfd, pHinfo->headList, sizeof(SCompHeader) * pCfg->maxSessions);

    if (pHinfo->headList[pObj->sid].compInfoOffset > 0) {
      FUNC2(pVnode->hfd, pHinfo->headList[pObj->sid].compInfoOffset, SEEK_SET);
      if (FUNC4(pVnode->hfd, &pHinfo->compInfo, sizeof(SCompInfo)) != sizeof(SCompInfo)) {
        FUNC0("vid:%d sid:%d, failed to read compInfo from file:%s", pObj->vnode, pObj->sid, pVnode->cfn);
        return -1;
      }

      if (pHinfo->compInfo.uid == pObj->uid) {
        pHinfo->compInfoOffset = pHinfo->headList[pObj->sid].compInfoOffset;
        pHinfo->leftOffset = pHinfo->headList[pObj->sid].compInfoOffset + sizeof(SCompInfo);
      } else {
        pHinfo->headList[pObj->sid].compInfoOffset = 0;
      }
    } 

    if ( pHinfo->headList[pObj->sid].compInfoOffset == 0 ) {
      FUNC3(&pHinfo->compInfo, 0, sizeof(SCompInfo));
      pHinfo->compInfo.uid = pObj->uid;

      for (sid = pObj->sid + 1; sid < pCfg->maxSessions; ++sid)
        if (pHinfo->headList[sid].compInfoOffset > 0) break;

      pHinfo->compInfoOffset = (sid == pCfg->maxSessions) ? pHinfo->hfdSize : pHinfo->headList[sid].compInfoOffset;
      pHinfo->leftOffset = pHinfo->compInfoOffset;
    }

    pHinfo->oldNumOfBlocks = pHinfo->compInfo.numOfBlocks;
    FUNC2(pVnode->hfd, 0, SEEK_SET);
    FUNC2(pVnode->nfd, 0, SEEK_SET);
    FUNC5(pVnode->nfd, pVnode->hfd, NULL, pHinfo->compInfoOffset);
    FUNC6(pVnode->nfd, &pHinfo->compInfo, sizeof(SCompInfo));
    if (pHinfo->headList[pObj->sid].compInfoOffset > 0) FUNC2(pVnode->hfd, sizeof(SCompInfo), SEEK_CUR);

    if (pVnode->commitFileId < pImport->fileId) {
      if (pHinfo->compInfo.numOfBlocks > 0)
        pHinfo->leftOffset += pHinfo->compInfo.numOfBlocks * sizeof(SCompBlock);

      rowsBefore = FUNC9(pImport, pHinfo, data);

      // copy all existing compBlockInfo
      FUNC2(pVnode->hfd, pHinfo->compInfoOffset + sizeof(SCompInfo), SEEK_SET);
      if (pHinfo->compInfo.numOfBlocks > 0)
        FUNC5(pVnode->nfd, pVnode->hfd, NULL, pHinfo->compInfo.numOfBlocks * sizeof(SCompBlock));

    } else if (pVnode->commitFileId == pImport->fileId) {
      int slots = pImport->pos ? pImport->slot + 1 : pImport->slot;
      pHinfo->leftOffset += slots * sizeof(SCompBlock);

      // check if last block is at last file, if it is, read into memory
      if (pImport->pos == 0 && pHinfo->compInfo.numOfBlocks > 0 && pImport->slot == pHinfo->compInfo.numOfBlocks &&
          pHinfo->compInfo.last) {
        rowsBefore = FUNC9(pImport, pHinfo, data);
        if ( rowsBefore > 0 ) pImport->slot--;
      }

      // this block will be replaced by new blocks
      if (pImport->pos > 0) pHinfo->compInfo.numOfBlocks--;

      if (pImport->slot > 0) {
        FUNC2(pVnode->hfd, pHinfo->compInfoOffset + sizeof(SCompInfo), SEEK_SET);
        FUNC5(pVnode->nfd, pVnode->hfd, NULL, pImport->slot * sizeof(SCompBlock));
      }

      if (pImport->slot < pHinfo->compInfo.numOfBlocks)
        pHinfo->last = 0;  // new blocks are not at the end of block list

    } else {
      // nothing

      pHinfo->last = 0;  // new blocks are not at the end of block list
    }
  }

  return rowsBefore;
}
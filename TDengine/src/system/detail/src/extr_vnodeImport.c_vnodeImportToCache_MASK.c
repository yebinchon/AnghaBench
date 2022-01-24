#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int numOfPoints; char** offset; } ;
struct TYPE_16__ {int unCommittedBlocks; int currentSlot; int maxBlocks; TYPE_7__** cacheBlocks; } ;
struct TYPE_15__ {int commit; int pos; int slot; scalar_t__ importedRows; TYPE_4__* pObj; } ;
struct TYPE_14__ {size_t vnode; int pointsPerBlock; int bytesPerPoint; int freePoints; int numOfColumns; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; TYPE_1__* schema; scalar_t__ pCache; } ;
struct TYPE_13__ {int cacheBlockSize; } ;
struct TYPE_12__ {scalar_t__ firstKey; int /*<<< orphan*/  vmutex; TYPE_3__ cfg; } ;
struct TYPE_11__ {int bytes; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_2__ SVnodeObj ;
typedef  TYPE_3__ SVnodeCfg ;
typedef  TYPE_4__ SMeterObj ;
typedef  TYPE_5__ SImportInfo ;
typedef  TYPE_6__ SCacheInfo ;
typedef  TYPE_7__ SCacheBlock ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_MAX_COLUMNS ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*) ; 
 TYPE_2__* vnodeList ; 

int FUNC9(SImportInfo *pImport, char *payload, int rows) {
  SMeterObj  *pObj = pImport->pObj;
  SVnodeObj  *pVnode = &vnodeList[pObj->vnode];
  SVnodeCfg  *pCfg = &pVnode->cfg;
  int         code = -1;
  SCacheInfo *pInfo = (SCacheInfo *)pObj->pCache;
  int         slot, pos, row, col, points, tpoints;

  char *data[TSDB_MAX_COLUMNS], *current[TSDB_MAX_COLUMNS];
  int   slots = pInfo->unCommittedBlocks + 1;
  int   trows = slots * pObj->pointsPerBlock + rows;  // max rows in buffer
  int   tsize = (trows / pObj->pointsPerBlock + 1) * pCfg->cacheBlockSize;
  TSKEY firstKey = *((TSKEY *)payload);
  TSKEY lastKey = *((TSKEY *)(payload + pObj->bytesPerPoint * (rows - 1)));

  if (pObj->freePoints < rows || pObj->freePoints < (pObj->pointsPerBlock << 1)) {
    FUNC1("vid:%d sid:%d id:%s, import failed, cache is full, freePoints:%d", pObj->vnode, pObj->sid, pObj->meterId,
           pObj->freePoints);
    pImport->importedRows = 0;
    pImport->commit = 1;
    code = TSDB_CODE_ACTION_IN_PROGRESS;
    return code;
  }

  FUNC2("vid:%d sid:%d id:%s, %d rows data will be imported to cache, firstKey:%ld lastKey:%ld",
      pObj->vnode, pObj->sid, pObj->meterId, rows, firstKey, lastKey);

  FUNC6(&(pVnode->vmutex));
  if (firstKey < pVnode->firstKey) pVnode->firstKey = firstKey;
  FUNC7(&(pVnode->vmutex));

  char *buffer = FUNC4(tsize);  // buffer to hold unCommitted data plus import data
  data[0] = buffer;
  current[0] = data[0];
  for (col = 1; col < pObj->numOfColumns; ++col) {
    data[col] = data[col - 1] + trows * pObj->schema[col - 1].bytes;
    current[col] = data[col];
  }

  // write import data into buffer first
  for (row = 0; row < rows; ++row) {
    for (col = 0; col < pObj->numOfColumns; ++col) {
      FUNC5(current[col], payload, pObj->schema[col].bytes);
      payload += pObj->schema[col].bytes;
      current[col] += pObj->schema[col].bytes;
    }
  }

  // copy the overwritten data into buffer
  tpoints = rows;
  pos = pImport->pos;
  slot = pImport->slot;
  while (1) {
    points = pInfo->cacheBlocks[slot]->numOfPoints - pos;
    for (col = 0; col < pObj->numOfColumns; ++col) {
      int size = points * pObj->schema[col].bytes;
      FUNC5(current[col], pInfo->cacheBlocks[slot]->offset[col] + pos * pObj->schema[col].bytes, size);
      current[col] += size;
    }
    pos = 0;
    tpoints += points;

    if (slot == pInfo->currentSlot) break;
    slot = (slot + 1) % pInfo->maxBlocks;
  }

  for (col = 0; col < pObj->numOfColumns; ++col) current[col] = data[col];
  pos = pImport->pos;

  // write back to existing slots first
  slot = pImport->slot;
  while (1) {
    points = (tpoints > pObj->pointsPerBlock - pos) ? pObj->pointsPerBlock - pos : tpoints;
    SCacheBlock *pCacheBlock = pInfo->cacheBlocks[slot];
    for (col = 0; col < pObj->numOfColumns; ++col) {
      int size = points * pObj->schema[col].bytes;
      FUNC5(pCacheBlock->offset[col] + pos * pObj->schema[col].bytes, current[col], size);
      current[col] += size;
    }
    pCacheBlock->numOfPoints = points + pos;
    pos = 0;
    tpoints -= points;

    if (slot == pInfo->currentSlot) break;
    slot = (slot + 1) % pInfo->maxBlocks;
  }

  // allocate new cache block if there are still data left
  while (tpoints > 0) {
    pImport->commit = FUNC8(pObj);
    if (pImport->commit < 0) goto _exit;
    points = (tpoints > pObj->pointsPerBlock) ? pObj->pointsPerBlock : tpoints;
    SCacheBlock *pCacheBlock = pInfo->cacheBlocks[pInfo->currentSlot];
    for (col = 0; col < pObj->numOfColumns; ++col) {
      int size = points * pObj->schema[col].bytes;
      FUNC5(pCacheBlock->offset[col] + pos * pObj->schema[col].bytes, current[col], size);
      current[col] += size;
    }
    tpoints -= points;
    pCacheBlock->numOfPoints = points;
  }

  code = 0;
  FUNC0(&pObj->freePoints, rows);
  FUNC2("vid:%d sid:%d id:%s, %d rows data are imported to cache", pObj->vnode, pObj->sid, pObj->meterId, rows);

_exit:
  FUNC3(buffer);
  return code;
}
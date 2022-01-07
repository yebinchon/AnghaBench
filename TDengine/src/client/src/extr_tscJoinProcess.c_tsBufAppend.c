
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_15__ {scalar_t__ tag; } ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ rawBuf; scalar_t__ threshold; } ;
struct TYPE_18__ {int numOfVnodes; scalar_t__ numOfTotal; TYPE_2__ block; TYPE_3__* pData; TYPE_4__ tsData; } ;
struct TYPE_14__ {scalar_t__ vnode; } ;
struct TYPE_16__ {int len; TYPE_1__ info; } ;
typedef TYPE_3__ STSVnodeBlockInfoEx ;
typedef TYPE_4__ STSList ;
typedef TYPE_5__ STSBuf ;


 scalar_t__ TSDB_KEYSIZE ;
 TYPE_3__* addOneVnodeInfo (TYPE_5__*,scalar_t__) ;
 int assert (int) ;
 int expandBuffer (TYPE_4__*,scalar_t__) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 int setCheckTSOrder (TYPE_5__*,char const*,scalar_t__) ;
 int shrinkBuffer (TYPE_4__*) ;
 int tsBufResetPos (TYPE_5__*) ;
 int writeDataToDisk (TYPE_5__*) ;

void tsBufAppend(STSBuf* pTSBuf, int32_t vnodeId, int64_t tag, const char* pData, int32_t len) {
  STSVnodeBlockInfoEx* pBlockInfo = ((void*)0);
  STSList* ptsData = &pTSBuf->tsData;

  if (pTSBuf->numOfVnodes == 0 || pTSBuf->pData[pTSBuf->numOfVnodes - 1].info.vnode != vnodeId) {
    writeDataToDisk(pTSBuf);
    shrinkBuffer(ptsData);

    pBlockInfo = addOneVnodeInfo(pTSBuf, vnodeId);
  } else {
    pBlockInfo = &pTSBuf->pData[pTSBuf->numOfVnodes - 1];
  }

  assert(pBlockInfo->info.vnode == vnodeId);

  if (pTSBuf->block.tag != tag && ptsData->len > 0) {

    writeDataToDisk(pTSBuf);
  } else {
    expandBuffer(ptsData, len);
  }

  pTSBuf->block.tag = tag;
  memcpy(ptsData->rawBuf + ptsData->len, pData, (size_t)len);


  setCheckTSOrder(pTSBuf, pData, len);

  ptsData->len += len;
  pBlockInfo->len += len;

  pTSBuf->numOfTotal += len / TSDB_KEYSIZE;

  if (ptsData->len >= ptsData->threshold) {
    writeDataToDisk(pTSBuf);
    shrinkBuffer(ptsData);
  }

  tsBufResetPos(pTSBuf);
}

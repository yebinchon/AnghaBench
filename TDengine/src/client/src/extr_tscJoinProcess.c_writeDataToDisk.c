
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_11__ {int len; int allocSize; int rawBuf; } ;
struct TYPE_10__ {int numOfElem; int compLen; int* payload; int tag; } ;
struct TYPE_9__ {int numOfVnodes; TYPE_6__ tsData; TYPE_2__* pData; int fileSize; int f; int bufSize; int assistBuf; TYPE_4__ block; } ;
struct TYPE_7__ {int numOfBlocks; int compLen; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
typedef TYPE_3__ STSBuf ;
typedef TYPE_4__ STSBlock ;


 int SEEK_SET ;
 int TSDB_KEYSIZE ;
 int TWO_STAGE_COMP ;
 int UNUSED (int ) ;
 int fseek (int ,int ,int ) ;
 int fwrite (int*,int,int,int ) ;
 int shrinkBuffer (TYPE_6__*) ;
 int tsCompressTimestamp (int ,int,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static void writeDataToDisk(STSBuf* pTSBuf) {
  if (pTSBuf->tsData.len == 0) {
    return;
  }

  STSBlock* pBlock = &pTSBuf->block;

  pBlock->numOfElem = pTSBuf->tsData.len / TSDB_KEYSIZE;
  pBlock->compLen =
      tsCompressTimestamp(pTSBuf->tsData.rawBuf, pTSBuf->tsData.len, pTSBuf->tsData.len / TSDB_KEYSIZE, pBlock->payload,
                          pTSBuf->tsData.allocSize, TWO_STAGE_COMP, pTSBuf->assistBuf, pTSBuf->bufSize);

  int64_t r = fseek(pTSBuf->f, pTSBuf->fileSize, SEEK_SET);
  UNUSED(r);
  fwrite(&pBlock->tag, sizeof(pBlock->tag), 1, pTSBuf->f);
  fwrite(&pBlock->numOfElem, sizeof(pBlock->numOfElem), 1, pTSBuf->f);

  fwrite(&pBlock->compLen, sizeof(pBlock->compLen), 1, pTSBuf->f);

  fwrite(pBlock->payload, (size_t)pBlock->compLen, 1, pTSBuf->f);

  fwrite(&pBlock->compLen, sizeof(pBlock->compLen), 1, pTSBuf->f);

  int32_t blockSize = sizeof(pBlock->tag) + sizeof(pBlock->numOfElem) + sizeof(pBlock->compLen) * 2 + pBlock->compLen;
  pTSBuf->fileSize += blockSize;

  pTSBuf->tsData.len = 0;

  pTSBuf->pData[pTSBuf->numOfVnodes - 1].info.compLen += blockSize;
  pTSBuf->pData[pTSBuf->numOfVnodes - 1].info.numOfBlocks += 1;

  shrinkBuffer(&pTSBuf->tsData);
}

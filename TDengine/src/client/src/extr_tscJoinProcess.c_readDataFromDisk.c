
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_9__ {scalar_t__* payload; scalar_t__ padding; scalar_t__ compLen; scalar_t__ tag; scalar_t__ numOfElem; } ;
struct TYPE_7__ {int allocSize; int rawBuf; int len; } ;
struct TYPE_8__ {int f; int bufSize; int assistBuf; TYPE_1__ tsData; TYPE_3__ block; } ;
typedef TYPE_2__ STSBuf ;
typedef TYPE_3__ STSBlock ;


 int SEEK_CUR ;
 scalar_t__ TSQL_SO_DESC ;
 int TWO_STAGE_COMP ;
 int UNUSED (int ) ;
 int fread (scalar_t__*,int,int,int ) ;
 int fseek (int ,scalar_t__,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int tsDecompressTimestamp (scalar_t__*,scalar_t__,scalar_t__,int ,int ,int ,int ,int ) ;

STSBlock* readDataFromDisk(STSBuf* pTSBuf, int32_t order, bool decomp) {
  STSBlock* pBlock = &pTSBuf->block;


  void* tmp = pBlock->payload;
  memset(pBlock, 0, sizeof(STSBlock));
  pBlock->payload = tmp;

  if (order == TSQL_SO_DESC) {




    fseek(pTSBuf->f, -sizeof(pBlock->padding), SEEK_CUR);
    fread(&pBlock->padding, sizeof(pBlock->padding), 1, pTSBuf->f);

    pBlock->compLen = pBlock->padding;
    int32_t offset = pBlock->compLen + sizeof(pBlock->compLen) * 2 + sizeof(pBlock->numOfElem) + sizeof(pBlock->tag);
    fseek(pTSBuf->f, -offset, SEEK_CUR);
  }

  fread(&pBlock->tag, sizeof(pBlock->tag), 1, pTSBuf->f);
  fread(&pBlock->numOfElem, sizeof(pBlock->numOfElem), 1, pTSBuf->f);

  fread(&pBlock->compLen, sizeof(pBlock->compLen), 1, pTSBuf->f);
  fread(pBlock->payload, (size_t)pBlock->compLen, 1, pTSBuf->f);

  if (decomp) {
    pTSBuf->tsData.len =
        tsDecompressTimestamp(pBlock->payload, pBlock->compLen, pBlock->numOfElem, pTSBuf->tsData.rawBuf,
                              pTSBuf->tsData.allocSize, TWO_STAGE_COMP, pTSBuf->assistBuf, pTSBuf->bufSize);
  }


  fread(&pBlock->padding, sizeof(pBlock->padding), 1, pTSBuf->f);


  if (order == TSQL_SO_DESC) {
    int32_t offset = pBlock->compLen + sizeof(pBlock->compLen) * 2 + sizeof(pBlock->numOfElem) + sizeof(pBlock->tag);
    int64_t r = fseek(pTSBuf->f, -offset, SEEK_CUR);
    UNUSED(r);
  }

  return pBlock;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int nAllocSize; int ordered; int prevTS; scalar_t__ pData; } ;
typedef TYPE_1__ STableDataBlocks ;


 int INT64_MIN ;
 scalar_t__ calloc (int,int) ;

STableDataBlocks* tscCreateDataBlock(int32_t size) {
  STableDataBlocks* dataBuf = (STableDataBlocks*)calloc(1, sizeof(STableDataBlocks));
  dataBuf->nAllocSize = (uint32_t)size;
  dataBuf->pData = calloc(1, dataBuf->nAllocSize);
  dataBuf->ordered = 1;
  dataBuf->prevTS = INT64_MIN;
  return dataBuf;
}

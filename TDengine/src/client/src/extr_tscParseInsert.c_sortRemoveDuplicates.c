
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int numOfRows; char* payLoad; } ;
struct TYPE_4__ {int rowSize; int size; scalar_t__ tsSource; int ordered; scalar_t__ pData; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ STableDataBlocks ;
typedef TYPE_2__ SShellSubmitBlock ;


 scalar_t__ TSDB_USE_SERVER_TS ;
 int assert (int) ;
 int memmove (char*,char*,int) ;
 int qsort (char*,int,int,int ) ;
 int rowDataCompar ;

void sortRemoveDuplicates(STableDataBlocks *dataBuf) {
  SShellSubmitBlock *pBlocks = (SShellSubmitBlock *)dataBuf->pData;


  assert(pBlocks->numOfRows * dataBuf->rowSize + sizeof(SShellSubmitBlock) == dataBuf->size);


  if (dataBuf->tsSource == TSDB_USE_SERVER_TS) {
    assert(dataBuf->ordered);
  }

  if (!dataBuf->ordered) {
    char *pBlockData = pBlocks->payLoad;
    qsort(pBlockData, pBlocks->numOfRows, dataBuf->rowSize, rowDataCompar);

    int32_t i = 0;
    int32_t j = 1;

    while (j < pBlocks->numOfRows) {
      TSKEY ti = *(TSKEY *)(pBlockData + dataBuf->rowSize * i);
      TSKEY tj = *(TSKEY *)(pBlockData + dataBuf->rowSize * j);

      if (ti == tj) {
        ++j;
        continue;
      }

      int32_t nextPos = (++i);
      if (nextPos != j) {
        memmove(pBlockData + dataBuf->rowSize * nextPos, pBlockData + dataBuf->rowSize * j, dataBuf->rowSize);
      }

      ++j;
    }

    dataBuf->ordered = 1;

    pBlocks->numOfRows = i + 1;
    dataBuf->size = sizeof(SShellSubmitBlock) + dataBuf->rowSize * pBlocks->numOfRows;
  }
}

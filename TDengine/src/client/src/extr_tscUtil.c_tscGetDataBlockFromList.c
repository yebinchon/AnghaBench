
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int STableDataBlocks ;
typedef int SDataBlockList ;


 scalar_t__ taosAddIntHash (void*,int ,char*) ;
 scalar_t__ taosGetIntHashData (void*,int ) ;
 int tscAppendDataBlock (int *,int *) ;
 int * tscCreateDataBlockEx (size_t,scalar_t__,scalar_t__,char*) ;

STableDataBlocks* tscGetDataBlockFromList(void* pHashList, SDataBlockList* pDataBlockList, int64_t id, int32_t size,
                                          int32_t startOffset, int32_t rowSize, char* tableId) {
  STableDataBlocks* dataBuf = ((void*)0);

  STableDataBlocks** t1 = (STableDataBlocks**)taosGetIntHashData(pHashList, id);
  if (t1 != ((void*)0)) {
    dataBuf = *t1;
  }

  if (dataBuf == ((void*)0)) {
    dataBuf = tscCreateDataBlockEx((size_t)size, rowSize, startOffset, tableId);
    dataBuf = *(STableDataBlocks**)taosAddIntHash(pHashList, id, (char*)&dataBuf);
    tscAppendDataBlock(pDataBlockList, dataBuf);
  }

  return dataBuf;
}

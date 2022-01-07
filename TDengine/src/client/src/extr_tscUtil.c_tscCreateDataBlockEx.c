
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_4__ {int tsSource; int meterId; void* size; void* rowSize; } ;
typedef TYPE_1__ STableDataBlocks ;


 int TSDB_METER_ID_LEN ;
 int strncpy (int ,char*,int ) ;
 TYPE_1__* tscCreateDataBlock (size_t) ;

STableDataBlocks* tscCreateDataBlockEx(size_t size, int32_t rowSize, int32_t startOffset, char* name) {
  STableDataBlocks* dataBuf = tscCreateDataBlock(size);

  dataBuf->rowSize = rowSize;
  dataBuf->size = startOffset;
  dataBuf->tsSource = -1;

  strncpy(dataBuf->meterId, name, TSDB_METER_ID_LEN);
  return dataBuf;
}

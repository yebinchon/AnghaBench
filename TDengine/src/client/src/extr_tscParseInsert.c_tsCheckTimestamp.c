
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int ordered; int tsSource; scalar_t__ prevTS; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ STableDataBlocks ;


 int TSDB_CODE_SUCCESS ;
 int TSDB_USE_CLI_TS ;
 int TSDB_USE_SERVER_TS ;

__attribute__((used)) static int32_t tsCheckTimestamp(STableDataBlocks *pDataBlocks, const char *start) {

  if (!pDataBlocks->ordered) {
    return TSDB_CODE_SUCCESS;
  }

  TSKEY k = *(TSKEY *)start;

  if (k == 0) {
    if (pDataBlocks->tsSource == TSDB_USE_CLI_TS) {
      return -1;
    } else if (pDataBlocks->tsSource == -1) {
      pDataBlocks->tsSource = TSDB_USE_SERVER_TS;
    }
  } else {
    if (pDataBlocks->tsSource == TSDB_USE_SERVER_TS) {
      return -1;
    } else if (pDataBlocks->tsSource == -1) {
      pDataBlocks->tsSource = TSDB_USE_CLI_TS;
    }
  }

  if (k <= pDataBlocks->prevTS && (pDataBlocks->tsSource == TSDB_USE_CLI_TS)) {
    pDataBlocks->ordered = 0;
  }

  pDataBlocks->prevTS = k;
  return TSDB_CODE_SUCCESS;
}

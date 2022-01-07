
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SDB_TYPE_AFTER_BATCH_UPDATE ;
 size_t SDB_TYPE_BATCH_UPDATE ;
 size_t SDB_TYPE_BEFORE_BATCH_UPDATE ;
 size_t SDB_TYPE_DECODE ;
 size_t SDB_TYPE_DELETE ;
 size_t SDB_TYPE_DESTROY ;
 size_t SDB_TYPE_ENCODE ;
 size_t SDB_TYPE_INSERT ;
 size_t SDB_TYPE_RESET ;
 size_t SDB_TYPE_UPDATE ;
 int mgmtDbActionAfterBatchUpdate ;
 int mgmtDbActionBatchUpdate ;
 int mgmtDbActionBeforeBatchUpdate ;
 int mgmtDbActionDecode ;
 int mgmtDbActionDelete ;
 int mgmtDbActionDestroy ;
 int mgmtDbActionEncode ;
 int * mgmtDbActionFp ;
 int mgmtDbActionInsert ;
 int mgmtDbActionReset ;
 int mgmtDbActionUpdate ;

void mgmtDbActionInit() {
  mgmtDbActionFp[SDB_TYPE_INSERT] = mgmtDbActionInsert;
  mgmtDbActionFp[SDB_TYPE_DELETE] = mgmtDbActionDelete;
  mgmtDbActionFp[SDB_TYPE_UPDATE] = mgmtDbActionUpdate;
  mgmtDbActionFp[SDB_TYPE_ENCODE] = mgmtDbActionEncode;
  mgmtDbActionFp[SDB_TYPE_DECODE] = mgmtDbActionDecode;
  mgmtDbActionFp[SDB_TYPE_BEFORE_BATCH_UPDATE] = mgmtDbActionBeforeBatchUpdate;
  mgmtDbActionFp[SDB_TYPE_BATCH_UPDATE] = mgmtDbActionBatchUpdate;
  mgmtDbActionFp[SDB_TYPE_AFTER_BATCH_UPDATE] = mgmtDbActionAfterBatchUpdate;
  mgmtDbActionFp[SDB_TYPE_RESET] = mgmtDbActionReset;
  mgmtDbActionFp[SDB_TYPE_DESTROY] = mgmtDbActionDestroy;
}

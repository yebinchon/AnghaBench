
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
 int mgmtMeterActionAfterBatchUpdate ;
 int mgmtMeterActionBatchUpdate ;
 int mgmtMeterActionBeforeBatchUpdate ;
 int mgmtMeterActionDecode ;
 int mgmtMeterActionDelete ;
 int mgmtMeterActionDestroy ;
 int mgmtMeterActionEncode ;
 int * mgmtMeterActionFp ;
 int mgmtMeterActionInsert ;
 int mgmtMeterActionReset ;
 int mgmtMeterActionUpdate ;

void mgmtMeterActionInit() {
  mgmtMeterActionFp[SDB_TYPE_INSERT] = mgmtMeterActionInsert;
  mgmtMeterActionFp[SDB_TYPE_DELETE] = mgmtMeterActionDelete;
  mgmtMeterActionFp[SDB_TYPE_UPDATE] = mgmtMeterActionUpdate;
  mgmtMeterActionFp[SDB_TYPE_ENCODE] = mgmtMeterActionEncode;
  mgmtMeterActionFp[SDB_TYPE_DECODE] = mgmtMeterActionDecode;
  mgmtMeterActionFp[SDB_TYPE_BEFORE_BATCH_UPDATE] = mgmtMeterActionBeforeBatchUpdate;
  mgmtMeterActionFp[SDB_TYPE_BATCH_UPDATE] = mgmtMeterActionBatchUpdate;
  mgmtMeterActionFp[SDB_TYPE_AFTER_BATCH_UPDATE] = mgmtMeterActionAfterBatchUpdate;
  mgmtMeterActionFp[SDB_TYPE_RESET] = mgmtMeterActionReset;
  mgmtMeterActionFp[SDB_TYPE_DESTROY] = mgmtMeterActionDestroy;
}

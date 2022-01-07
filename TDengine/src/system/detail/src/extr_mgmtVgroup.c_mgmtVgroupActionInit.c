
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
 int mgmtVgroupActionAfterBatchUpdate ;
 int mgmtVgroupActionBatchUpdate ;
 int mgmtVgroupActionBeforeBatchUpdate ;
 int mgmtVgroupActionDecode ;
 int mgmtVgroupActionDelete ;
 int mgmtVgroupActionDestroy ;
 int mgmtVgroupActionEncode ;
 int * mgmtVgroupActionFp ;
 int mgmtVgroupActionInsert ;
 int mgmtVgroupActionReset ;
 int mgmtVgroupActionUpdate ;

void mgmtVgroupActionInit() {
  mgmtVgroupActionFp[SDB_TYPE_INSERT] = mgmtVgroupActionInsert;
  mgmtVgroupActionFp[SDB_TYPE_DELETE] = mgmtVgroupActionDelete;
  mgmtVgroupActionFp[SDB_TYPE_UPDATE] = mgmtVgroupActionUpdate;
  mgmtVgroupActionFp[SDB_TYPE_ENCODE] = mgmtVgroupActionEncode;
  mgmtVgroupActionFp[SDB_TYPE_DECODE] = mgmtVgroupActionDecode;
  mgmtVgroupActionFp[SDB_TYPE_BEFORE_BATCH_UPDATE] = mgmtVgroupActionBeforeBatchUpdate;
  mgmtVgroupActionFp[SDB_TYPE_BATCH_UPDATE] = mgmtVgroupActionBatchUpdate;
  mgmtVgroupActionFp[SDB_TYPE_AFTER_BATCH_UPDATE] = mgmtVgroupActionAfterBatchUpdate;
  mgmtVgroupActionFp[SDB_TYPE_RESET] = mgmtVgroupActionReset;
  mgmtVgroupActionFp[SDB_TYPE_DESTROY] = mgmtVgroupActionDestroy;
}

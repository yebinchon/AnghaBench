
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
 int mgmtUserActionAfterBatchUpdate ;
 int mgmtUserActionBatchUpdate ;
 int mgmtUserActionBeforeBatchUpdate ;
 int mgmtUserActionDecode ;
 int mgmtUserActionDelete ;
 int mgmtUserActionDestroy ;
 int mgmtUserActionEncode ;
 int * mgmtUserActionFp ;
 int mgmtUserActionInsert ;
 int mgmtUserActionReset ;
 int mgmtUserActionUpdate ;

void mgmtUserActionInit() {
  mgmtUserActionFp[SDB_TYPE_INSERT] = mgmtUserActionInsert;
  mgmtUserActionFp[SDB_TYPE_DELETE] = mgmtUserActionDelete;
  mgmtUserActionFp[SDB_TYPE_UPDATE] = mgmtUserActionUpdate;
  mgmtUserActionFp[SDB_TYPE_ENCODE] = mgmtUserActionEncode;
  mgmtUserActionFp[SDB_TYPE_DECODE] = mgmtUserActionDecode;
  mgmtUserActionFp[SDB_TYPE_BEFORE_BATCH_UPDATE] = mgmtUserActionBeforeBatchUpdate;
  mgmtUserActionFp[SDB_TYPE_BATCH_UPDATE] = mgmtUserActionBatchUpdate;
  mgmtUserActionFp[SDB_TYPE_AFTER_BATCH_UPDATE] = mgmtUserActionAfterBatchUpdate;
  mgmtUserActionFp[SDB_TYPE_RESET] = mgmtUserActionReset;
  mgmtUserActionFp[SDB_TYPE_DESTROY] = mgmtUserActionDestroy;
}

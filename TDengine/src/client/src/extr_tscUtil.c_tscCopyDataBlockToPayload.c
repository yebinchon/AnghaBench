
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {scalar_t__ payloadLen; scalar_t__ allocSize; int payload; int count; } ;
struct TYPE_12__ {TYPE_3__ cmd; } ;
struct TYPE_11__ {scalar_t__ nAllocSize; int pData; int meterId; int numOfMeters; } ;
typedef int STaosDigest ;
typedef TYPE_1__ STableDataBlocks ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SMeterMetaInfo ;


 int TSDB_CODE_SUCCESS ;
 int assert (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int strcpy (int ,int ) ;
 scalar_t__ tsRpcHeadSize ;
 int tscAllocPayload (TYPE_3__*,scalar_t__) ;
 int tscGetMeterMeta (TYPE_2__*,int ,int ) ;
 TYPE_4__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;

int32_t tscCopyDataBlockToPayload(SSqlObj* pSql, STableDataBlocks* pDataBlock) {
  SSqlCmd* pCmd = &pSql->cmd;

  pCmd->count = pDataBlock->numOfMeters;
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  strcpy(pMeterMetaInfo->name, pDataBlock->meterId);






  int ret = tscAllocPayload(pCmd, pDataBlock->nAllocSize + sizeof(STaosDigest));
  if (TSDB_CODE_SUCCESS != ret) return ret;
  memcpy(pCmd->payload, pDataBlock->pData, pDataBlock->nAllocSize);





  pCmd->payloadLen = pDataBlock->nAllocSize - tsRpcHeadSize;

  assert(pCmd->allocSize >= pCmd->payloadLen + tsRpcHeadSize + sizeof(STaosDigest));
  return tscGetMeterMeta(pSql, pMeterMetaInfo->name, 0);
}

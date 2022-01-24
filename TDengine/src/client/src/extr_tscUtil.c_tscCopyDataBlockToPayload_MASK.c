#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {scalar_t__ payloadLen; scalar_t__ allocSize; int /*<<< orphan*/  payload; int /*<<< orphan*/  count; } ;
struct TYPE_12__ {TYPE_3__ cmd; } ;
struct TYPE_11__ {scalar_t__ nAllocSize; int /*<<< orphan*/  pData; int /*<<< orphan*/  meterId; int /*<<< orphan*/  numOfMeters; } ;
typedef  int /*<<< orphan*/  STaosDigest ;
typedef  TYPE_1__ STableDataBlocks ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ tsRpcHeadSize ; 
 int FUNC3 (TYPE_3__*,scalar_t__) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int32_t FUNC6(SSqlObj* pSql, STableDataBlocks* pDataBlock) {
  SSqlCmd* pCmd = &pSql->cmd;

  pCmd->count = pDataBlock->numOfMeters;
  SMeterMetaInfo* pMeterMetaInfo = FUNC5(pCmd, 0);
  FUNC2(pMeterMetaInfo->name, pDataBlock->meterId);

  /*
   * the submit message consists of : [RPC header|message body|digest]
   * the dataBlock only includes the RPC Header buffer and actual submit messsage body, space for digest needs
   * additional space.
   */
  int ret = FUNC3(pCmd, pDataBlock->nAllocSize + sizeof(STaosDigest));
  if (TSDB_CODE_SUCCESS != ret) return ret;
  FUNC1(pCmd->payload, pDataBlock->pData, pDataBlock->nAllocSize);

  /*
   * the payloadLen should be actual message body size
   * the old value of payloadLen is the allocated payload size
   */
  pCmd->payloadLen = pDataBlock->nAllocSize - tsRpcHeadSize;

  FUNC0(pCmd->allocSize >= pCmd->payloadLen + tsRpcHeadSize + sizeof(STaosDigest));
  return FUNC4(pSql, pMeterMetaInfo->name, 0);
}
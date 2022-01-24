#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  peerId; int /*<<< orphan*/  ownId; int /*<<< orphan*/  tranId; struct TYPE_5__* signature; } ;
struct TYPE_4__ {int version; char msgType; scalar_t__ tranId; scalar_t__ content; int /*<<< orphan*/  meterId; scalar_t__ uid; int /*<<< orphan*/  destId; int /*<<< orphan*/  sourceId; scalar_t__ encrypt; scalar_t__ tcp; scalar_t__ spi; } ;
typedef  TYPE_1__ STaosHeader ;
typedef  int /*<<< orphan*/  STaosDigest ;
typedef  TYPE_2__ SRpcConn ;
typedef  int /*<<< orphan*/  SMsgNode ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

char *FUNC7(void *param, char type, int size) {
  STaosHeader *pHeader;
  char *       pMsg;
  SRpcConn *   pConn = (SRpcConn *)param;

  if (pConn == NULL || pConn->signature != pConn) {
    FUNC5("pConn:%p, connection has to be openned first before building a message", pConn);
    return NULL;
  }

  size += sizeof(SMsgNode) + sizeof(STaosHeader) + sizeof(STaosDigest);
  pMsg = (char *)FUNC2((size_t)size);
  FUNC4(pMsg, 0, (size_t)size);
  pHeader = (STaosHeader *)(pMsg + sizeof(SMsgNode));
  pHeader->version = 1;
  pHeader->msgType = type;
  pHeader->spi = 0;
  pHeader->tcp = 0;
  pHeader->encrypt = 0;
  pHeader->tranId = FUNC0(&pConn->tranId, 1);
  if (pHeader->tranId == 0) pHeader->tranId = FUNC0(&pConn->tranId, 1);

  pHeader->sourceId = pConn->ownId;
  pHeader->destId = pConn->peerId;
  pHeader->uid = (uint32_t)pConn + (uint32_t)FUNC1();
  FUNC3(pHeader->meterId, pConn->meterId, FUNC6(pHeader->meterId));

  return (char *)pHeader->content;
}
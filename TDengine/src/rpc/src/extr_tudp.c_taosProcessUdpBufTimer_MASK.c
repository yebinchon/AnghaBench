#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* signature; void* timer; int emptyNum; scalar_t__ totalLen; int /*<<< orphan*/  msgHdr; TYPE_1__* pConn; } ;
struct TYPE_5__ {int /*<<< orphan*/  tmrCtrl; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ SUdpConn ;
typedef  TYPE_2__ SUdpBuf ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_UDP_BUF_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void (*) (void*,void*),int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void**) ; 

void FUNC6(void *param, void *tmrId) {
  SUdpBuf *pBuf = (SUdpBuf *)param;
  if (pBuf->signature != param) return;
  if (pBuf->timer != tmrId) return;

  SUdpConn *pConn = pBuf->pConn;

  FUNC0(&pConn->mutex);

  if (FUNC2(pBuf->msgHdr) > 0) {
    FUNC4(pBuf->msgHdr, pConn->fd);
    pBuf->totalLen = 0;
    pBuf->emptyNum = 0;
  } else {
    pBuf->emptyNum++;
    if (pBuf->emptyNum > 200) {
      FUNC3(pBuf);
      pBuf = NULL;
    }
  }

  FUNC1(&pConn->mutex);

  if (pBuf) FUNC5(taosProcessUdpBufTimer, RPC_UDP_BUF_TIME, pBuf, pConn->tmrCtrl, &pBuf->timer);
}
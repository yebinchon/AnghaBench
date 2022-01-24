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
struct TYPE_6__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  mutex; scalar_t__ hash; int /*<<< orphan*/  fd; int /*<<< orphan*/ * signature; } ;
struct TYPE_5__ {int server; int threads; int tcpFd; int /*<<< orphan*/  tmrCtrl; TYPE_2__* udpConn; int /*<<< orphan*/  tcpThread; } ;
typedef  TYPE_1__ SUdpConnSet ;
typedef  TYPE_2__ SUdpConn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(void *handle) {
  SUdpConnSet *pSet = (SUdpConnSet *)handle;
  SUdpConn *   pConn;

  if (pSet == NULL) return;
  if (pSet->server == 1) {
    FUNC0(pSet->tcpThread);
  }

  for (int i = 0; i < pSet->threads; ++i) {
    pConn = pSet->udpConn + i;
    pConn->signature = NULL;
    FUNC0(pConn->thread);
    FUNC5(pConn->fd);
    if (pConn->hash) {
      FUNC4(pConn->hash);
      FUNC2(&pConn->mutex);
    }
  }

  for (int i = 0; i < pSet->threads; ++i) {
    pConn = pSet->udpConn + i;
    FUNC1(pConn->thread, NULL);
    FUNC3("chandle:%p is closed", pConn);
  }

  if (pSet->tcpFd >= 0) FUNC6(pSet->tcpFd);
  pSet->tcpFd = -1;
  FUNC7(pSet->tmrCtrl);
  FUNC8(pSet);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  clientAddr ;
struct TYPE_8__ {int fd; TYPE_2__* pSet; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct TYPE_7__ {scalar_t__ tcpFd; int /*<<< orphan*/  label; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ SUdpConnSet ;
typedef  TYPE_3__ STransfer ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int FUNC0 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taosTransferDataViaTcp ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

void *FUNC16(void *argv) {
  int                connFd = -1;
  struct sockaddr_in clientAddr;
  pthread_attr_t     thattr;
  pthread_t          thread;
  uint32_t           sourceIp;
  char               ipstr[20];

  SUdpConnSet *pSet = (SUdpConnSet *)argv;

  pSet->tcpFd = FUNC14(pSet->ip, pSet->port);
  if (pSet->tcpFd < 0) {
    FUNC10("%s failed to create TCP socket %s:%d for UDP server, reason:%s", pSet->label, pSet->ip, pSet->port,
           FUNC8(errno));
    FUNC13();
    return NULL;
  }

  FUNC11("%s UDP server is created, ip:%s:%d", pSet->label, pSet->ip, pSet->port);

  FUNC5(&thattr);
  FUNC6(&thattr, PTHREAD_CREATE_DETACHED);

  while (1) {
    if (pSet->tcpFd < 0) break;
    socklen_t addrlen = sizeof(clientAddr);
    connFd = FUNC0(pSet->tcpFd, (struct sockaddr *)&clientAddr, &addrlen);

    if (connFd < 0) {
      FUNC9("%s UDP server TCP accept failure, reason:%s", pSet->label, FUNC8(errno));
      continue;
    }

    sourceIp = clientAddr.sin_addr.s_addr;
    FUNC15(ipstr, sourceIp);
    FUNC11("%s UDP server TCP connection from ip:%s:%u", pSet->label, ipstr, FUNC2(clientAddr.sin_port));

    STransfer *pTransfer = FUNC3(sizeof(STransfer));
    pTransfer->fd = connFd;
    pTransfer->ip = sourceIp;
    pTransfer->port = clientAddr.sin_port;
    pTransfer->pSet = pSet;

    if (FUNC7(&(thread), &thattr, taosTransferDataViaTcp, (void *)pTransfer) < 0) {
      FUNC11("%s failed to create thread for UDP server, reason:%s", pSet->label, FUNC8(errno));
      FUNC1(pTransfer);
      FUNC12(connFd);
    }
  }

  FUNC4(&thattr);
  return NULL;
}
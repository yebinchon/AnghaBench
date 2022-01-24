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
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_5__ {short port; int numOfThreads; int /*<<< orphan*/  thread; TYPE_1__* pThreadObj; int /*<<< orphan*/  label; int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {scalar_t__ pollFd; int threadId; int /*<<< orphan*/  thread; int /*<<< orphan*/  fdReady; int /*<<< orphan*/  threadMutex; void* shandle; int /*<<< orphan*/  label; void* processData; } ;
typedef  TYPE_1__ SThreadObj ;
typedef  TYPE_2__ SServerObj ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,short,int) ; 
 scalar_t__ taosAcceptTcpConnection ; 
 scalar_t__ taosProcessTcpData ; 

void *FUNC13(char *ip, short port, char *label, int numOfThreads, void *fp, void *shandle) {
  int            i;
  SServerObj *   pServerObj;
  pthread_attr_t thattr;
  SThreadObj *   pThreadObj;

  pServerObj = (SServerObj *)FUNC1(sizeof(SServerObj));
  FUNC9(pServerObj->ip, ip);
  pServerObj->port = port;
  FUNC9(pServerObj->label, label);
  pServerObj->numOfThreads = numOfThreads;

  pServerObj->pThreadObj = (SThreadObj *)FUNC1(sizeof(SThreadObj) * (size_t)numOfThreads);
  if (pServerObj->pThreadObj == NULL) {
    FUNC11("TCP:%s no enough memory", label);
    return NULL;
  }
  FUNC2(pServerObj->pThreadObj, 0, sizeof(SThreadObj) * (size_t)numOfThreads);

  pThreadObj = pServerObj->pThreadObj;
  for (i = 0; i < numOfThreads; ++i) {
    pThreadObj->processData = fp;
    FUNC9(pThreadObj->label, label);
    pThreadObj->shandle = shandle;

    if (FUNC8(&(pThreadObj->threadMutex), NULL) < 0) {
      FUNC11("%s failed to init TCP process data mutex, reason:%s", label, FUNC10(errno));
      return NULL;
    }

    if (FUNC6(&(pThreadObj->fdReady), NULL) != 0) {
      FUNC11("%s init TCP condition variable failed, reason:%s\n", label, FUNC10(errno));
      return NULL;
    }

    pThreadObj->pollFd = FUNC0(10);  // size does not matter
    if (pThreadObj->pollFd < 0) {
      FUNC11("%s failed to create TCP epoll", label);
      return NULL;
    }

    FUNC4(&thattr);
    FUNC5(&thattr, PTHREAD_CREATE_JOINABLE);
    if (FUNC7(&(pThreadObj->thread), &thattr, (void *)taosProcessTcpData, (void *)(pThreadObj)) != 0) {
      FUNC11("%s failed to create TCP process data thread, reason:%s", label, FUNC10(errno));
      return NULL;
    }

    pThreadObj->threadId = i;
    pThreadObj++;
  }

  FUNC4(&thattr);
  FUNC5(&thattr, PTHREAD_CREATE_JOINABLE);
  if (FUNC7(&(pServerObj->thread), &thattr, (void *)taosAcceptTcpConnection, (void *)(pServerObj)) != 0) {
    FUNC11("%s failed to create TCP accept thread, reason:%s", label, FUNC10(errno));
    return NULL;
  }

  /*
    if ( pthread_create(&(pServerObj->thread), &thattr,
    (void*)taosAcceptUDConnection, (void *)(pServerObj)) != 0 ) {
      tError("%s failed to create UD accept thread, reason:%s", label,
    strerror(errno));
      return NULL;
    }
  */
  FUNC3(&thattr);
  FUNC12("%s TCP server is initialized, ip:%s port:%u numOfThreads:%d", label, ip, port, numOfThreads);

  return (void *)pServerObj;
}
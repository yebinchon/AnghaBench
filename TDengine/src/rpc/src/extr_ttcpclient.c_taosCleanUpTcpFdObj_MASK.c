#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ numOfFds; int /*<<< orphan*/  label; int /*<<< orphan*/  shandle; int /*<<< orphan*/  (* processData ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ;int /*<<< orphan*/  mutex; TYPE_1__* pHead; int /*<<< orphan*/  pollFd; } ;
struct TYPE_10__ {scalar_t__ thandle; TYPE_2__* prev; TYPE_1__* next; int /*<<< orphan*/  fd; TYPE_4__* pTcp; struct TYPE_10__* signature; } ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
typedef  TYPE_3__ STcpFd ;
typedef  TYPE_4__ STcpClient ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC9(STcpFd *pFdObj) {
  STcpClient *pTcp;

  if (pFdObj == NULL) return;
  if (pFdObj->signature != pFdObj) return;

  pTcp = pFdObj->pTcp;
  if (pTcp == NULL) {
    FUNC6("double free TcpFdObj!!!!");
    return;
  }

  FUNC1(pTcp->pollFd, EPOLL_CTL_DEL, pFdObj->fd, NULL);
  FUNC0(pFdObj->fd);

  FUNC3(&pTcp->mutex);

  pTcp->numOfFds--;

  if (pTcp->numOfFds < 0) FUNC6("%s number of TCP FDs shall never be negative", pTcp->label);

  // remove from the FdObject list

  if (pFdObj->prev) {
    (pFdObj->prev)->next = pFdObj->next;
  } else {
    pTcp->pHead = pFdObj->next;
  }

  if (pFdObj->next) {
    (pFdObj->next)->prev = pFdObj->prev;
  }

  FUNC4(&pTcp->mutex);

  // notify the upper layer to clean the associated context
  if (pFdObj->thandle) (*(pTcp->processData))(NULL, 0, 0, 0, pTcp->shandle, pFdObj->thandle, NULL);

  FUNC7("%s TCP FD is cleaned up, numOfFds:%d", pTcp->label, pTcp->numOfFds);

  FUNC2(pFdObj, 0, sizeof(STcpFd));

  FUNC8(pFdObj);
}
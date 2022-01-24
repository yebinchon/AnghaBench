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
struct TYPE_6__ {int /*<<< orphan*/  msgHdr; int /*<<< orphan*/ * signature; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; TYPE_1__* pConn; int /*<<< orphan*/  timer; } ;
struct TYPE_5__ {int /*<<< orphan*/  hash; } ;
typedef  TYPE_2__ SUdpBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(SUdpBuf *pBuf) {
  FUNC3(&pBuf->timer);
  FUNC1(pBuf->pConn->hash, pBuf->ip, pBuf->port);

  // tTrace("%s UDP buffer to:0x%lld:%d is removed", pBuf->pConn->label,
  // pBuf->ip, pBuf->port);

  pBuf->signature = NULL;
  FUNC2(pBuf->msgHdr);
  FUNC0(pBuf);
}
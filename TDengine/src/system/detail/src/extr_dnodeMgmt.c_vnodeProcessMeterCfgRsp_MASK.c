#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {scalar_t__ more; } ;
typedef  TYPE_1__ STaosRsp ;
typedef  int /*<<< orphan*/  SMgmtObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,int) ; 

int FUNC5(char *pMsg, int msgLen, SMgmtObj *pObj) {
  int code = *pMsg;

  if (code == 0) {
    FUNC3(pMsg + 1, msgLen - 1);
  } else {
    STaosRsp *pRsp;
    pRsp = (STaosRsp *)pMsg;
    int32_t *pint = (int32_t *)pRsp->more;
    int      vnode = FUNC2(*pint);
    int      sid = FUNC2(*(pint + 1));
    FUNC0("vid:%d, sid:%d, code:%d, meter is not configured, remove it", vnode, sid, code);
    int ret = FUNC4(vnode, sid);
    FUNC1("vid:%d, sid:%d, meter delete ret:%d", vnode, sid, ret);
  }

  return 0;
}
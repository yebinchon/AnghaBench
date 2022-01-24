#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {double maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
typedef  TYPE_1__ SVnodeCfg ;
typedef  int /*<<< orphan*/  SShellObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int const) ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t) ; 
 int /*<<< orphan*/  pShellServer ; 
 int /*<<< orphan*/ * rpcQhandle ; 
 int /*<<< orphan*/ ** shellList ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int tsMaxQueues ; 
 TYPE_2__* vnodeList ; 

int FUNC4(int vnode) {
  const int32_t MIN_NUM_OF_SESSIONS = 300;

  SVnodeCfg *pCfg = &vnodeList[vnode].cfg;
  int32_t sessions = (int32_t) FUNC0(pCfg->maxSessions * 1.1, MIN_NUM_OF_SESSIONS);

  size_t size = sessions * sizeof(SShellObj);
  shellList[vnode] = (SShellObj *)FUNC1(1, size);
  if (shellList[vnode] == NULL) {
    FUNC2("vid:%d failed to allocate shellObj, size:%d", vnode, size);
    return -1;
  }

  if(FUNC3(pShellServer, vnode, sessions, rpcQhandle[(vnode+1)%tsMaxQueues]) != TSDB_CODE_SUCCESS) {
    return -1;
  }

  return TSDB_CODE_SUCCESS;
}
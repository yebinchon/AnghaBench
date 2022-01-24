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
struct TYPE_2__ {int /*<<< orphan*/  cfg; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  SVnodeCfg ;
typedef  int /*<<< orphan*/  SVPeerDesc ;

/* Variables and functions */
 int TSDB_CODE_VG_COMMITLOG_INIT_FAILED ; 
 int TSDB_CODE_VG_INIT_FAILED ; 
 int /*<<< orphan*/  TSDB_STATUS_CREATING ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int) ; 
 char* tsDirectory ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* vnodeList ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(int vnode, SVnodeCfg *pCfg, SVPeerDesc *pDesc) {
  char fileName[128];

  vnodeList[vnode].status = TSDB_STATUS_CREATING;

  FUNC1(fileName, "%s/vnode%d", tsDirectory, vnode);
  FUNC0(fileName, 0755);

  FUNC1(fileName, "%s/vnode%d/db", tsDirectory, vnode);
  FUNC0(fileName, 0755);

  vnodeList[vnode].cfg = *pCfg;
  if (FUNC2(vnode) != 0) {
    return TSDB_CODE_VG_INIT_FAILED;
  }

  if (FUNC5(vnode, pCfg, pDesc) != 0) {
    return TSDB_CODE_VG_INIT_FAILED;
  }

  if (FUNC3(vnode) != 0) {
    return TSDB_CODE_VG_COMMITLOG_INIT_FAILED;
  }

  return FUNC4(vnode);
}
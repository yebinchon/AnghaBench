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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
struct TYPE_4__ {int maxSessions; } ;
struct TYPE_5__ {scalar_t__ meterIndex; TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  TSCKSUM ;
typedef  int /*<<< orphan*/  SMeterObjHeader ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TSDB_FILENAME_LEN ; 
 int /*<<< orphan*/  TSDB_FILE_HEADER_LEN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 char* tsDirectory ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* vnodeList ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC11(int vnode) {
  FILE *  fp;
  char    fileName[TSDB_FILENAME_LEN];
  int32_t size;
  // SMeterObj *pObj;

  FUNC6(fileName, "%s/vnode%d/meterObj.v%d", tsDirectory, vnode, vnode);
  fp = FUNC3(fileName, "w+");
  if (fp == NULL) {
    FUNC1("failed to create vnode:%d file:%s", vnode, fileName);
    return -1;
  } else {
    FUNC9(fp);
    FUNC10(fp, vnodeList + vnode);
    FUNC4(fp, TSDB_FILE_HEADER_LEN, SEEK_SET);

    size = sizeof(SMeterObjHeader) * vnodeList[vnode].cfg.maxSessions + sizeof(TSCKSUM);
    FUNC8(vnodeList[vnode].meterIndex);
    vnodeList[vnode].meterIndex = FUNC0(1, size);
    FUNC7(0, (uint8_t *)(vnodeList[vnode].meterIndex), size);
    FUNC5(vnodeList[vnode].meterIndex, size, 1, fp);

    FUNC2(fp);
  }

  return 0;
}
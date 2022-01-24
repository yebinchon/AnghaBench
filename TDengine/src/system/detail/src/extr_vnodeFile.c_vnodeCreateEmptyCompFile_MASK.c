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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  TSCKSUM ;
typedef  int /*<<< orphan*/  SCompHeader ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int TSDB_FILENAME_LEN ; 
 int /*<<< orphan*/  TSDB_FILE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,int,char*,char*,char*) ; 
 TYPE_2__* vnodeList ; 

int FUNC12(int vnode, int fileId) {
  char  headName[TSDB_FILENAME_LEN];
  char  dataName[TSDB_FILENAME_LEN];
  char  lastName[TSDB_FILENAME_LEN];
  int   tfd;
  char *temp;

  if (FUNC11(vnode, fileId, headName, dataName, lastName) < 0) {
    FUNC1("failed to create head data file, vnode: %d, fileId: %d", vnode, fileId);
    return -1;
  }

  tfd = FUNC6(headName, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  if (tfd < 0) {
    FUNC1("failed to create head file:%s, reason:%s", headName, FUNC7(errno));
    return -1;
  }

  FUNC10(tfd);
  int size = sizeof(SCompHeader) * vnodeList[vnode].cfg.maxSessions + sizeof(TSCKSUM);
  temp = FUNC4(size);
  FUNC5(temp, 0, size);
  FUNC8(0, (uint8_t *)temp, size);

  FUNC3(tfd, TSDB_FILE_HEADER_LEN, SEEK_SET);
  FUNC9(tfd, temp, size);
  FUNC2(temp);
  FUNC0(tfd);

  tfd = FUNC6(dataName, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  if (tfd < 0) {
    FUNC1("failed to create data file:%s, reason:%s", dataName, FUNC7(errno));
    return -1;
  }
  FUNC10(tfd);
  FUNC0(tfd);

  tfd = FUNC6(lastName, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  if (tfd < 0) {
    FUNC1("failed to create last file:%s, reason:%s", lastName, FUNC7(errno));
    return -1;
  }
  FUNC10(tfd);
  FUNC0(tfd);

  return 0;
}
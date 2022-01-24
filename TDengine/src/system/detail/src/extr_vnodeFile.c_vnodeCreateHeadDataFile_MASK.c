#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int TSDB_FILENAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int,int) ; 

int FUNC6(int vnode, int fileId, char *headName, char *dataName, char *lastName) {
  char dHeadName[TSDB_FILENAME_LEN];
  char dDataName[TSDB_FILENAME_LEN];
  char dLastName[TSDB_FILENAME_LEN];

  char *path = FUNC3(vnode, fileId);
  if (path == NULL) {
    return -1;
  }
  
  FUNC2(vnode, path);

  FUNC5(headName, dataName, lastName, vnode, fileId);
  FUNC4(dHeadName, dDataName, dLastName, vnode, fileId, path);
  if (FUNC1(dHeadName, headName) != 0) return -1;
  if (FUNC1(dDataName, dataName) != 0) return -1;
  if (FUNC1(dLastName, lastName) != 0) return -1;

  FUNC0(
      "vid:%d, fileId:%d, empty header file:%s dataFile:%s lastFile:%s on "
      "disk:%s is created ",
      vnode, fileId, headName, dataName, lastName, path);

  return 0;
}
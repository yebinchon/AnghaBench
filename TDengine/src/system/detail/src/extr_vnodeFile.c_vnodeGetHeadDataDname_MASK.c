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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int,int,int) ; 

void FUNC1(char *dHeadName, char *dDataName, char *dLastName, int vnode, int fileId, char *path) {
  if (dHeadName != NULL) FUNC0(dHeadName, "%s/data/vnode%d/v%df%d.head0", path, vnode, vnode, fileId);
  if (dDataName != NULL) FUNC0(dDataName, "%s/data/vnode%d/v%df%d.data", path, vnode, vnode, fileId);
  if (dLastName != NULL) FUNC0(dLastName, "%s/data/vnode%d/v%df%d.last0", path, vnode, vnode, fileId);
}
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
 char* tsDirectory ; 

void FUNC1(char *headName, char *dataName, char *lastName, int vnode, int fileId) {
  if (headName != NULL) FUNC0(headName, "%s/vnode%d/db/v%df%d.head", tsDirectory, vnode, vnode, fileId);
  if (dataName != NULL) FUNC0(dataName, "%s/vnode%d/db/v%df%d.data", tsDirectory, vnode, vnode, fileId);
  if (lastName != NULL) FUNC0(lastName, "%s/vnode%d/db/v%df%d.last", tsDirectory, vnode, vnode, fileId);
}
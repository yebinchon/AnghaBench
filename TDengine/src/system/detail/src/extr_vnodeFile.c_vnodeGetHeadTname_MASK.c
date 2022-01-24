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

void FUNC1(char *nHeadName, char *nLastName, int vnode, int fileId) {
  FUNC0(nHeadName, "%s/vnode%d/db/v%df%d.t", tsDirectory, vnode, vnode, fileId);
  FUNC0(nLastName, "%s/vnode%d/db/v%df%d.l", tsDirectory, vnode, vnode, fileId);
}
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
typedef  int /*<<< orphan*/  devnode_t ;
typedef  int /*<<< orphan*/  devdirent_t ;
struct TYPE_2__ {int /*<<< orphan*/ * de_dnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEV_DEVFD ; 
 int /*<<< orphan*/  M_CACHE ; 
 int /*<<< orphan*/  NFDCACHE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* dev_root ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fdesc_lckgrp ; 
 int /*<<< orphan*/  fdesc_mtx ; 
 int /*<<< orphan*/  fdhash ; 
 int /*<<< orphan*/  fdhashtbl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7()
{
	int error = 0;
	devnode_t *rootdir = dev_root->de_dnp;
	devdirent_t *direntp;
	
	/* XXX Make sure you have the right path... */
	fdhashtbl = FUNC4(NFDCACHE, M_CACHE, &fdhash);
	fdesc_lckgrp = FUNC5("fdesc", NULL);
	FUNC6(&fdesc_mtx, fdesc_lckgrp, NULL);

	FUNC0();
	FUNC2("fd", rootdir, DEV_DEVFD, NULL, NULL, NULL, &direntp);
	FUNC3();
	FUNC1();

	return(error);
}
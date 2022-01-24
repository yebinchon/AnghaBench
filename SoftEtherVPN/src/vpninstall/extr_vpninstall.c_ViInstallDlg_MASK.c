#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  d ;
struct TYPE_4__ {int BufSize; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ VI_INSTALL_DLG ;

/* Variables and functions */
 int /*<<< orphan*/  D_INSTALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ViInstallDlgProc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4()
{
	VI_INSTALL_DLG d;

	FUNC3(&d, sizeof(d));

	d.BufSize = 65535;
	d.Buf = FUNC2(d.BufSize);

	FUNC0(NULL, D_INSTALL, ViInstallDlgProc, &d);

	FUNC1(d.Buf);
}
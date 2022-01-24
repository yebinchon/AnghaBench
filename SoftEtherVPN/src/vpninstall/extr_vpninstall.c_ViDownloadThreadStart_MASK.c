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
struct TYPE_4__ {int DownloadStarted; int /*<<< orphan*/  DownloadThread; } ;
typedef  TYPE_1__ VI_INSTALL_DLG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ViDownloadThread ; 

void FUNC1(VI_INSTALL_DLG *d)
{
	// Validate arguments
	if (d == NULL)
	{
		return;
	}

	d->DownloadStarted = true;
	d->DownloadThread = FUNC0(ViDownloadThread, d);
}
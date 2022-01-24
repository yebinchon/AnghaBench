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
struct vout_fbdev {int /*<<< orphan*/ * mem; int /*<<< orphan*/  mem_size; int /*<<< orphan*/  fbvar_old; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIOPUT_VSCREENINFO ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vout_fbdev *fbdev)
{
	FUNC0(fbdev->fd, FBIOPUT_VSCREENINFO, &fbdev->fbvar_old);
	if (fbdev->mem != MAP_FAILED)
		FUNC1(fbdev->mem, fbdev->mem_size);
	fbdev->mem = NULL;
}
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
struct vout_fbdev {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vout_fbdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct vout_fbdev*) ; 

void FUNC3(struct vout_fbdev *fbdev)
{
	FUNC2(fbdev);
	if (fbdev->fd >= 0)
		FUNC0(fbdev->fd);
	fbdev->fd = -1;
	FUNC1(fbdev);
}
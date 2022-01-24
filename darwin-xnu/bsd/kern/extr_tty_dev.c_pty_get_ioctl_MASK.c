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
struct tty_dev_t {struct ptmx_ioctl* (* open ) (int /*<<< orphan*/ ,int) ;} ;
struct ptmx_ioctl {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tty_dev_t* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ptmx_ioctl* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptmx_ioctl *
FUNC3(dev_t dev, int open_flag, struct tty_dev_t **out_driver)
{
	struct tty_dev_t *driver = FUNC1(dev);
	if (out_driver) {
		*out_driver = driver;
	}
	if (driver && driver->open) {
		return driver->open(FUNC0(dev), open_flag);
	}
	return NULL;
}
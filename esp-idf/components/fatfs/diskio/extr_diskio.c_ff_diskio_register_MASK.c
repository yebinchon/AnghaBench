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
typedef  int /*<<< orphan*/  ff_diskio_impl_t ;
typedef  size_t BYTE ;

/* Variables and functions */
 size_t FF_VOLUMES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ ** s_impls ; 

void FUNC4(BYTE pdrv, const ff_diskio_impl_t* discio_impl)
{
    FUNC0(pdrv < FF_VOLUMES);

    if (s_impls[pdrv]) {
        ff_diskio_impl_t* im = s_impls[pdrv];
        s_impls[pdrv] = NULL;
        FUNC1(im);
    }

    if (!discio_impl) {
        return;
    }

    ff_diskio_impl_t * impl = (ff_diskio_impl_t *)FUNC2(sizeof(ff_diskio_impl_t));
    FUNC0(impl != NULL);
    FUNC3(impl, discio_impl, sizeof(ff_diskio_impl_t));
    s_impls[pdrv] = impl;
}
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
typedef  int /*<<< orphan*/  ppnum_t ;

/* Variables and functions */
 unsigned int PMAP_OPTIONS_COMPRESSOR ; 
 unsigned int PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,void*) ; 

unsigned int
FUNC3(
	ppnum_t pn,
	unsigned int options,
	void *arg)
{
	if ((options & PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED)) {
		/*
		 * On ARM, the "modified" bit is managed by software, so
		 * we know up-front if the physical page is "modified",
		 * without having to scan all the PTEs pointing to it.
		 * The caller should have made the VM page "busy" so noone
		 * should be able to establish any new mapping and "modify"
		 * the page behind us.
		 */
		if (FUNC1(pn)) {
			/*
			 * The page has been modified and will be sent to
			 * the VM compressor.
			 */
			options |= PMAP_OPTIONS_COMPRESSOR;
		} else {
			/*
			 * The page hasn't been modified and will be freed
			 * instead of compressed.
			 */
		}
	}

	/* disconnect the page */
	FUNC2(pn, 0, options, arg);

	/* return ref/chg status */
	return (FUNC0(pn));
}
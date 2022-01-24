#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_8__ {int lg_maxobjs; size_t curobjs; size_t first; int /*<<< orphan*/ * objs; int /*<<< orphan*/  curbytes; } ;
typedef  TYPE_1__ quarantine_t ;
typedef  int /*<<< orphan*/  quarantine_obj_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static quarantine_t *
FUNC7(tsd_t *tsd, quarantine_t *quarantine)
{
	quarantine_t *ret;

	ret = FUNC4(tsd, quarantine->lg_maxobjs + 1);
	if (ret == NULL) {
		FUNC3(tsd, quarantine);
		return (quarantine);
	}

	ret->curbytes = quarantine->curbytes;
	ret->curobjs = quarantine->curobjs;
	if (quarantine->first + quarantine->curobjs <= (FUNC0(1) <<
	    quarantine->lg_maxobjs)) {
		/* objs ring buffer data are contiguous. */
		FUNC2(ret->objs, &quarantine->objs[quarantine->first],
		    quarantine->curobjs * sizeof(quarantine_obj_t));
	} else {
		/* objs ring buffer data wrap around. */
		size_t ncopy_a = (FUNC0(1) << quarantine->lg_maxobjs) -
		    quarantine->first;
		size_t ncopy_b = quarantine->curobjs - ncopy_a;

		FUNC2(ret->objs, &quarantine->objs[quarantine->first], ncopy_a
		    * sizeof(quarantine_obj_t));
		FUNC2(&ret->objs[ncopy_a], quarantine->objs, ncopy_b *
		    sizeof(quarantine_obj_t));
	}
	FUNC1(tsd, quarantine, FUNC5(tsd, false), true);

	FUNC6(tsd, ret);
	return (ret);
}
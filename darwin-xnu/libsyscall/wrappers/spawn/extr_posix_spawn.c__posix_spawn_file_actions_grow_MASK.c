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
typedef  TYPE_1__* _posix_spawn_file_actions_t ;
struct TYPE_4__ {int psfa_act_alloc; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int
FUNC3(_posix_spawn_file_actions_t *psactsp)
{
	int newnum = 0;
	if (FUNC1((*psactsp)->psfa_act_alloc, 2, &newnum))
		return ENOMEM;

	size_t newsize = FUNC0(newnum);
	if (newsize == 0)
		return ENOMEM;

	/*
	 * XXX may want to impose an administrative limit here; POSIX does
	 * XXX not provide for an administrative error return in this case,
	 * XXX so it's probably acceptable to just fail catastrophically
	 * XXX instead of implementing one.
	 */
	_posix_spawn_file_actions_t new_psacts;
	if ((new_psacts = (_posix_spawn_file_actions_t)FUNC2((*psactsp), newsize)) == NULL) {
		return ENOMEM;
	}
	new_psacts->psfa_act_alloc = newnum;
	*psactsp = new_psacts;

	return 0;
}
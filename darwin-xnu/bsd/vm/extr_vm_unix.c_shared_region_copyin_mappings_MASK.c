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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct shared_file_mapping_np {int dummy; } ;
struct proc {int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; } ;
typedef  int /*<<< orphan*/  mappings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,struct shared_file_mapping_np*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(
		struct proc			*p,
		user_addr_t			user_mappings,
		unsigned int			mappings_count,
		struct shared_file_mapping_np	*mappings)
{
	int		error = 0;
	vm_size_t	mappings_size = 0;

	/* get the list of mappings the caller wants us to establish */
	mappings_size = (vm_size_t) (mappings_count * sizeof (mappings[0]));
	error = FUNC2(user_mappings,
		       mappings,
		       mappings_size);
	if (error) {
		FUNC0(
			("shared_region: %p [%d(%s)] map(): "
			 "copyin(0x%llx, %d) failed (error=%d)\n",
			 (void )FUNC1(FUNC3()),
			 p->p_pid, p->p_comm,
			 (uint64_t)user_mappings, mappings_count, error));
	}
	return error;
}
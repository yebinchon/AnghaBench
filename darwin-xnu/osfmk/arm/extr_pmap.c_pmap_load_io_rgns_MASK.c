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
typedef  int /*<<< orphan*/  pmap_io_range_t ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,void**,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cmp_io_rgns ; 
 int /*<<< orphan*/ * io_attr_table ; 
 int kSuccess ; 
 scalar_t__ num_io_rgns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	DTEntry entry;
	pmap_io_range_t *ranges;
	void *prop = NULL;
        int err;
	unsigned int prop_size;

	if (num_io_rgns == 0)
		return;

	err = FUNC1(NULL, "/defaults", &entry);
	FUNC2(err == kSuccess);

	err = FUNC0(entry, "pmap-io-ranges", &prop, &prop_size);
	FUNC2(err == kSuccess);

	ranges = prop;
	for (unsigned int i = 0; i < (prop_size / sizeof(*ranges)); ++i)
		io_attr_table[i] = ranges[i];

	FUNC3(io_attr_table, num_io_rgns, sizeof(*ranges), cmp_io_rgns);
}
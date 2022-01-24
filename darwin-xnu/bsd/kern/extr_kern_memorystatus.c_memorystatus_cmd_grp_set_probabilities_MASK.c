#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  size_t uint32_t ;
struct TYPE_7__ {scalar_t__ version; int use_probability; int /*<<< orphan*/  proc_name; } ;
typedef  TYPE_1__ memorystatus_properties_entry_v1_t ;
typedef  TYPE_1__ memorystatus_internal_probabilities_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_GRP_SET_PROP ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MAXCOMLEN ; 
 int /*<<< orphan*/  MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY ; 
 scalar_t__ MEMORYSTATUS_MPE_VERSION_1 ; 
 size_t MEMORYSTATUS_MPE_VERSION_1_SIZE ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC2 (scalar_t__,TYPE_1__*,size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 size_t memorystatus_global_probabilities_size ; 
 TYPE_1__* memorystatus_global_probabilities_table ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(user_addr_t buffer, size_t buffer_size)
{
	int error = 0;
	memorystatus_properties_entry_v1_t *entries = NULL;
	uint32_t entry_count = 0, i = 0;
	memorystatus_internal_probabilities_t *tmp_table_new = NULL, *tmp_table_old = NULL;
	size_t tmp_table_new_size = 0, tmp_table_old_size = 0;

	/* Verify inputs */
	if ((buffer == USER_ADDR_NULL) || (buffer_size == 0)) {
		error = EINVAL;
		goto out;
	}

	entry_count = (buffer_size / sizeof(memorystatus_properties_entry_v1_t));

	if ((entries = (memorystatus_properties_entry_v1_t *) FUNC3(buffer_size)) == NULL) {
		error = ENOMEM;
		goto out;
	}

	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_GRP_SET_PROP) | DBG_FUNC_START, MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY, entry_count, 0, 0, 0);

	if ((error = FUNC2(buffer, entries, buffer_size)) != 0) {
		goto out;
	}

	if (entries[0].version == MEMORYSTATUS_MPE_VERSION_1) {
		if ((buffer_size % MEMORYSTATUS_MPE_VERSION_1_SIZE) != 0) {
			error = EINVAL;
			goto out;
		}
	} else {
		error = EINVAL;
		goto out;
	}
 
	/* Verify sanity of input priorities */
	for (i=0; i < entry_count; i++) {
		/*
		 * 0 - low probability of use.
		 * 1 - high probability of use.
		 *
		 * Keeping this field an int (& not a bool) to allow 
		 * us to experiment with different values/approaches
		 * later on.
		 */
		if (entries[i].use_probability > 1) {
			error = EINVAL;
			goto out;
		}
	}

	tmp_table_new_size = sizeof(memorystatus_internal_probabilities_t) * entry_count;

	if ( (tmp_table_new = (memorystatus_internal_probabilities_t *) FUNC3(tmp_table_new_size)) == NULL) {
		error = ENOMEM;
		goto out;
	}
	FUNC5(tmp_table_new, 0, tmp_table_new_size);

	FUNC6();

	if (memorystatus_global_probabilities_table) {
		tmp_table_old = memorystatus_global_probabilities_table;
		tmp_table_old_size = memorystatus_global_probabilities_size;
	}

	memorystatus_global_probabilities_table = tmp_table_new;
	memorystatus_global_probabilities_size = tmp_table_new_size;
	tmp_table_new = NULL;

	for (i=0; i < entry_count; i++ ) {
		/* Build the table data  */
		FUNC8(memorystatus_global_probabilities_table[i].proc_name, entries[i].proc_name, MAXCOMLEN + 1);
		memorystatus_global_probabilities_table[i].use_probability = entries[i].use_probability;
	}

	FUNC7();
	
out:
	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_GRP_SET_PROP) | DBG_FUNC_END, MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY, entry_count, tmp_table_new_size, 0, 0);

	if (entries) {
		FUNC4(entries, buffer_size);
		entries = NULL;
	}

	if (tmp_table_old) {
		FUNC4(tmp_table_old, tmp_table_old_size);
		tmp_table_old = NULL;
	}

	return (error);

}
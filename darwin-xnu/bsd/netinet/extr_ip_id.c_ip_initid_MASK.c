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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int ARRAY_SIZE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * id_array ; 
 int /*<<< orphan*/ * id_bits ; 
 int /*<<< orphan*/  ipid_lock ; 
 int /*<<< orphan*/  ipid_lock_attr ; 
 int /*<<< orphan*/  ipid_lock_grp ; 
 int /*<<< orphan*/  ipid_lock_grp_attr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	FUNC0(id_array == NULL);
	FUNC0(id_bits == NULL);

	FUNC1(ARRAY_SIZE >= 512 && ARRAY_SIZE <= 32768);

	ipid_lock_grp_attr  = FUNC7();
	ipid_lock_grp = FUNC6("ipid", ipid_lock_grp_attr);
	ipid_lock_attr = FUNC5();
	FUNC8(&ipid_lock, ipid_lock_grp, ipid_lock_attr);

	id_array = (uint16_t *)FUNC3(ARRAY_SIZE * sizeof (uint16_t),
	    M_TEMP, M_WAITOK | M_ZERO);
	id_bits = (bitstr_t *)FUNC3(FUNC4(65536), M_TEMP,
	    M_WAITOK | M_ZERO);
	if (id_array == NULL || id_bits == NULL) {
		/* Just in case; neither or both. */
		if (id_array != NULL) {
			FUNC2(id_array, M_TEMP);
			id_array = NULL;
		}
		if (id_bits != NULL) {
			FUNC2(id_bits, M_TEMP);
			id_bits = NULL;
		}
	}
}
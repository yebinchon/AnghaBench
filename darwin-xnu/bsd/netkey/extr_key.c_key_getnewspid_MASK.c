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
typedef  int u_int32_t ;
struct secpolicy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_SADB_LOCKED ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 struct secpolicy* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct secpolicy*,int /*<<< orphan*/ ) ; 
 int key_spi_trycnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int policy_id ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static u_int32_t
FUNC5(void)
{
	u_int32_t newid = 0;
	int count = key_spi_trycnt;	/* XXX */
	struct secpolicy *sp;
	
	/* when requesting to allocate spi ranged */
	FUNC3(sadb_mutex);
	while (count--) {
		newid = (policy_id = (policy_id == ~0 ? 1 : policy_id + 1));
		
		if ((sp = FUNC0(newid)) == NULL)
			break;
		
		FUNC2(sp, KEY_SADB_LOCKED);
	}
	FUNC4(sadb_mutex);
	if (count == 0 || newid == 0) {
		FUNC1((LOG_DEBUG, "key_getnewspid: to allocate policy id is failed.\n"));
		return 0;
	}
	
	return newid;
}
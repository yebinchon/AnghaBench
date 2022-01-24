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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct netagent_wrapper {int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netagent_wrapper* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 

u_int32_t
FUNC4(uuid_t uuid)
{
	u_int32_t generation = 0;
	FUNC2(&netagent_lock);
	struct netagent_wrapper *wrapper = FUNC3(uuid);
	if (wrapper != NULL) {
		generation = wrapper->generation;
	} else {
		FUNC0(LOG_DEBUG, "Generation requested for invalid netagent");
	}
	FUNC1(&netagent_lock);

	return (generation);
}
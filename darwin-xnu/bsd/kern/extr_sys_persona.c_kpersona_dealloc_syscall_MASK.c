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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct persona {int dummy; } ;
typedef  int /*<<< orphan*/  persona_id ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct persona* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct persona*) ; 

__attribute__((used)) static int FUNC5(user_addr_t idp)
{
	int error = 0;
	uid_t persona_id;
	struct persona *persona;

	if (!FUNC2(FUNC1()))
		return EPERM;

	error = FUNC0(idp, &persona_id, sizeof(persona_id));
	if (error)
		return error;

	/* invalidate the persona (deny subsequent spawn/fork) */
	persona = FUNC3(persona_id);

	if (!persona)
		return ESRCH;

	/* one reference from the _lookup() */
	FUNC4(persona);

	/* one reference from the _alloc() */
	FUNC4(persona);

	return error;
}
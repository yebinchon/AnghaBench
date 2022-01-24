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
struct persona {int /*<<< orphan*/  pna_id; } ;

/* Variables and functions */
 int ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct persona* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct persona*) ; 

__attribute__((used)) static int FUNC3(user_addr_t idp)
{
	int error;
	struct persona *persona = FUNC1();

	if (!persona)
		return ESRCH;

	error = FUNC0(&persona->pna_id, idp, sizeof(persona->pna_id));
	FUNC2(persona);

	return error;
}
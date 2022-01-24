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
struct secasvar {size_t state; struct secashead* sah; } ;
struct secashead {int /*<<< orphan*/ * savtree; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct secasvar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct secasvar*,int /*<<< orphan*/ ) ; 
 size_t SADB_SASTATE_MATURE ; 
 scalar_t__ FUNC2 (struct secasvar*) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  secasvar ; 

__attribute__((used)) static int
FUNC3(struct secasvar *sav,
			   struct secashead *newsah)
{
	if (sav == NULL || newsah == NULL || sav->state != SADB_SASTATE_MATURE) {
		return EINVAL;
	}
	
	/* remove from SA header */
	if (FUNC2(sav))
		FUNC1(sav, chain);
	
	sav->sah = newsah;
	FUNC0(&newsah->savtree[SADB_SASTATE_MATURE], sav, secasvar, chain);
	return 0;
}
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
typedef  size_t u_int ;
struct socket {int dummy; } ;
struct secasvar {int flags2; struct socket* so; int /*<<< orphan*/ * savtree; } ;
struct secashead {int flags2; struct socket* so; int /*<<< orphan*/ * savtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_SADB_LOCKED ; 
 struct secasvar* FUNC0 (int /*<<< orphan*/ *) ; 
 struct secasvar* FUNC1 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SADB_SASTATE_DEAD ; 
 int SADB_X_EXT_SA2_DELETE_ON_DETACH ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sahtree ; 
 int /*<<< orphan*/  saorder_state_alive ; 
 size_t* saorder_state_any ; 

__attribute__((used)) static void
FUNC5 (struct socket *so)
{
	struct secashead *sah, *nextsah;
	struct secasvar *sav, *nextsav;
	u_int stateidx;
	u_int state;

	for (sah = FUNC0(&sahtree);
		 sah != NULL;
		 sah = nextsah) {
		nextsah = FUNC1(sah, chain);
		for (stateidx = 0; stateidx < FUNC2(saorder_state_alive); stateidx++) {
			state = saorder_state_any[stateidx];
			for (sav = FUNC0(&sah->savtree[state]); sav != NULL; sav = nextsav) {
				nextsav = FUNC1(sav, chain);
				if (sav->flags2 & SADB_X_EXT_SA2_DELETE_ON_DETACH &&
					sav->so == so) {
					FUNC4(sav, SADB_SASTATE_DEAD);
					FUNC3(sav, KEY_SADB_LOCKED);
				}
			}
		}
	}
}
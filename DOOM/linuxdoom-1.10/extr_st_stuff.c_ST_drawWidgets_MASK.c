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
typedef  int /*<<< orphan*/  boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ deathmatch ; 
 int st_armson ; 
 int st_fragson ; 
 scalar_t__ st_statusbaron ; 
 int /*<<< orphan*/ * w_ammo ; 
 int /*<<< orphan*/  w_armor ; 
 int /*<<< orphan*/ * w_arms ; 
 int /*<<< orphan*/  w_armsbg ; 
 int /*<<< orphan*/  w_faces ; 
 int /*<<< orphan*/  w_frags ; 
 int /*<<< orphan*/  w_health ; 
 int /*<<< orphan*/ * w_keyboxes ; 
 int /*<<< orphan*/ * w_maxammo ; 
 int /*<<< orphan*/  w_ready ; 

void FUNC4(boolean refresh)
{
    int		i;

    // used by w_arms[] widgets
    st_armson = st_statusbaron && !deathmatch;

    // used by w_frags widget
    st_fragson = deathmatch && st_statusbaron; 

    FUNC2(&w_ready, refresh);

    for (i=0;i<4;i++)
    {
	FUNC2(&w_ammo[i], refresh);
	FUNC2(&w_maxammo[i], refresh);
    }

    FUNC3(&w_health, refresh);
    FUNC3(&w_armor, refresh);

    FUNC0(&w_armsbg, refresh);

    for (i=0;i<6;i++)
	FUNC1(&w_arms[i], refresh);

    FUNC1(&w_faces, refresh);

    for (i=0;i<3;i++)
	FUNC1(&w_keyboxes[i], refresh);

    FUNC2(&w_frags, refresh);

}
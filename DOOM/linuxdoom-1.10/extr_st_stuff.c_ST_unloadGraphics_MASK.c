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

/* Variables and functions */
 int NUMCARDS ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int ST_NUMFACES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** arms ; 
 int /*<<< orphan*/  armsbg ; 
 int /*<<< orphan*/  faceback ; 
 int /*<<< orphan*/ * faces ; 
 int /*<<< orphan*/ * keys ; 
 int /*<<< orphan*/  sbar ; 
 int /*<<< orphan*/ * shortnum ; 
 int /*<<< orphan*/ * tallnum ; 
 int /*<<< orphan*/  tallpercent ; 

void FUNC1(void)
{

    int i;

    // unload the numbers, tall and short
    for (i=0;i<10;i++)
    {
	FUNC0(tallnum[i], PU_CACHE);
	FUNC0(shortnum[i], PU_CACHE);
    }
    // unload tall percent
    FUNC0(tallpercent, PU_CACHE); 

    // unload arms background
    FUNC0(armsbg, PU_CACHE); 

    // unload gray #'s
    for (i=0;i<6;i++)
	FUNC0(arms[i][0], PU_CACHE);
    
    // unload the key cards
    for (i=0;i<NUMCARDS;i++)
	FUNC0(keys[i], PU_CACHE);

    FUNC0(sbar, PU_CACHE);
    FUNC0(faceback, PU_CACHE);

    for (i=0;i<ST_NUMFACES;i++)
	FUNC0(faces[i], PU_CACHE);

    // Note: nobody ain't seen no unloading
    //   of stminus yet. Dude.
    

}
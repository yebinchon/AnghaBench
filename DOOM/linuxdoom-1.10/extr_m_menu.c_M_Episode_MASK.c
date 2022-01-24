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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NewDef ; 
 int /*<<< orphan*/  ReadDef1 ; 
 int /*<<< orphan*/  SWSTRING ; 
 int epi ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ gamemode ; 
 scalar_t__ registered ; 
 scalar_t__ shareware ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(int choice)
{
    if ( (gamemode == shareware)
	 && choice)
    {
	FUNC1(SWSTRING,NULL,false);
	FUNC0(&ReadDef1);
	return;
    }

    // Yet another hack...
    if ( (gamemode == registered)
	 && (choice > 2))
    {
      FUNC2( stderr,
	       "M_Episode: 4th episode requires UltimateDOOM\n");
      choice = 0;
    }
	 
    epi = choice;
    FUNC0(&NewDef);
}
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ joy ; 
 int* joyBMap ; 
 int /*<<< orphan*/  joyx ; 
 int /*<<< orphan*/  joyxcenter ; 
 int /*<<< orphan*/  joyy ; 
 int /*<<< orphan*/  joyycenter ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  soundjoyer ; 
 int soundjoyeron ; 
 scalar_t__ soundo ; 

int FUNC4(void)
{
	if(!joy) return(0);
        if(!FUNC1())
        {
         FUNC3("Joystick not detected!\n");
         joy=0;
         return 0;
        }
        if(soundo)
        {
         soundjoyeron=1;
         while(!soundjoyer);
        }
        else
         FUNC2();

        joyxcenter=joyx;
        joyycenter=joyy;

        if(!(joyBMap[0]|joyBMap[1]|joyBMap[2]|joyBMap[3]))
         FUNC0();
        return(1);
}
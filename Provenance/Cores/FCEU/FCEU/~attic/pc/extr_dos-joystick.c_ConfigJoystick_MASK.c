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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
 static char *genb="** Press button for ";

 FUNC2("\n\n Joystick button configuration:\n\n");
 FUNC2("   Push and release the button to map to the virtual joystick.\n");
 FUNC2("   If you do not wish to assign a button, wait a few seconds\n");
 FUNC2("   and the configuration will continue.\n\n");
 FUNC2("   Press enter to continue...\n");
 FUNC1();
                                                        
 FUNC2("%s\"Select\".\n",genb);
 FUNC0(2);

 FUNC2("%s\"Start\".\n",genb);
 FUNC0(3);

 FUNC2("%s\"B\".\n",genb);
 FUNC0(1);

 FUNC2("%s\"A\".\n",genb);
 FUNC0(0);

 FUNC2("%s\"Rapid fire B\".\n",genb);
 FUNC0(5);
 
 FUNC2("%s\"Rapid fire A\".\n",genb);
 FUNC0(4);

}
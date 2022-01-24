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
 scalar_t__ BACKGROUND ; 
 scalar_t__ MENUITEM ; 
 int* buffer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 size_t hi ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t lo ; 
 int* pressed ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7()
{
  int i;

  FUNC0();
  FUNC6(BACKGROUND+MENUITEM);
  FUNC2((78-24)/2,3);
  FUNC1("Test keyboard collisions");
  FUNC2((78-61)/2,5);
  FUNC1("Here you can test, if the keys you've choosen do not collide.");
  FUNC2((78-43)/2,6);
  FUNC1("(only few keyboards allow all combinations)");
  FUNC2((78-18)/2,8);
  FUNC1("Press ESC to exit.");
  for (i=0;i<256;i++) pressed[i]=0;
  FUNC4();
  do{
    FUNC5(17,12,0);
    FUNC5(29,12,1);
    FUNC5(41,12,2);
    FUNC5(53,12,3);
    while (hi==lo);
    pressed[buffer[lo]&0xff]=buffer[lo]<0x100;
    lo++;
    if (lo==100) lo=0;
  }while(!pressed[1]);
  /*wait until ESC is depressed*/
  do{
    while (hi==lo);
    pressed[buffer[lo]&0xff]=buffer[lo]<0x100;
    lo++;
    if (lo==100) lo=0;
  }while(pressed[1]);
  FUNC3();
}
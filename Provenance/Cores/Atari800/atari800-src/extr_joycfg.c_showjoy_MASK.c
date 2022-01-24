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
 scalar_t__ MENUHEADER ; 
 scalar_t__ MENUITEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 size_t** keysets ; 
 scalar_t__* pressed ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(int x,int y,int num)
{
  FUNC4(BACKGROUND+MENUITEM);
  FUNC2(x,y);
  FUNC0("Keyset %i",num);
  FUNC2(x+1,y+2);
  FUNC1("\\ | /");
  FUNC2(x+1,y+3);
  FUNC1("-   -");
  FUNC2(x+1,y+4);
  FUNC1("/ | \\");
  FUNC4(BACKGROUND+MENUHEADER);
  FUNC2(x+3,y+3);FUNC3(pressed[keysets[num][0]]?'@':' ');
  FUNC2(x,y+5);FUNC3(pressed[keysets[num][1]]?'@':' ');
  FUNC2(x+3,y+5);FUNC3(pressed[keysets[num][2]]?'@':' ');
  FUNC2(x+6,y+5);FUNC3(pressed[keysets[num][3]]?'@':' ');
  FUNC2(x,y+3);FUNC3(pressed[keysets[num][4]]?'@':' ');
  FUNC2(x+6,y+3);FUNC3(pressed[keysets[num][5]]?'@':' ');
  FUNC2(x,y+1);FUNC3(pressed[keysets[num][6]]?'@':' ');
  FUNC2(x+3,y+1);FUNC3(pressed[keysets[num][7]]?'@':' ');
  FUNC2(x+6,y+1);FUNC3(pressed[keysets[num][8]]?'@':' ');
}
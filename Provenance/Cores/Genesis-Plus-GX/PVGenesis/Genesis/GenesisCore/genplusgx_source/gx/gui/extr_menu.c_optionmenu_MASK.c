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
typedef  int /*<<< orphan*/  gui_menu ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  menu_options ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
  int ret, quit = 0;
  gui_menu *m = &menu_options;

  FUNC2(m);
  FUNC1(m,30,0);

  while (quit == 0)
  {
    ret = FUNC3(m);

    switch (ret)
    {
      case 0:
        FUNC0(m);
        FUNC8();
        FUNC2(m);
        break;
      case 1:
        FUNC0(m);
        FUNC9();
        FUNC2(m);
        break;
      case 2:
        FUNC0(m);
        FUNC7();
        FUNC2(m);
        break;
      case 3:
        FUNC0(m);
        FUNC5();
        FUNC2(m);
        break;
      case 4:
        FUNC0(m);
        FUNC6();
        FUNC2(m);
        break;
      case -1:
        quit = 1;
        break;
    }
  }

  FUNC4();
  FUNC1(m,30,1);
  FUNC0(m);
}
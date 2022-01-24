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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  SYS_HOTRESET ; 
 int /*<<< orphan*/  SYS_RETURNTOMENU ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC5 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  menu_main ; 
 int /*<<< orphan*/  osd_version ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  w_pointer ; 

__attribute__((used)) static void FUNC9(void)
{
  char *items[3] =
  {
    "View Credits",
#ifdef HW_RVL
    "Exit to System Menu",
#else
    "Reset System",
#endif
    "Return to Loader",
  };

  /* autodetect loader stub */
  int maxitems = 2;
  u32 *sig = (u32*)0x80001800;
  void (*reload)() = (void(*)())0x80001800;

#ifdef HW_RVL
  if ((sig[1] == 0x53545542) && (sig[2] == 0x48415858)) // HBC
#else
  if (sig[0] == 0x7c6000a6) // SDLOAD
#endif
  {
    maxitems = 3;
  }

  /* display option window */
  switch (FUNC3(&menu_main, osd_version, items, maxitems))
  {
    case 0: /* credits */
      FUNC0(&menu_main);
      FUNC7();
      FUNC2(&menu_main);
      break;

    case 1: /* reset */
#ifdef HW_RVL
      gxTextureClose(&w_pointer);
#endif
      FUNC0(&menu_main);
      FUNC1();
      FUNC8();
#ifdef HW_RVL
      SYS_ResetSystem(SYS_RETURNTOMENU, 0, 0);
#else
      FUNC4(SYS_HOTRESET,0,0);
#endif
      break;

    case 2: /* exit to loader */
#ifdef HW_RVL
      gxTextureClose(&w_pointer);
#endif
      FUNC0(&menu_main);
      FUNC1();
      FUNC8();
      FUNC4(SYS_SHUTDOWN,0,0);
      FUNC5(*reload);
      break;

    default:
      break;
  }
}
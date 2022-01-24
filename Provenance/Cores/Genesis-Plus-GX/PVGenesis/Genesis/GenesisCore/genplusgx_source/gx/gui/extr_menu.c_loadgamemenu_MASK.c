#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gui_menu ;
struct TYPE_2__ {int /*<<< orphan*/  l_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TYPE_RECENT ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  menu_load ; 

__attribute__((used)) static int FUNC6 ()
{
  int ret, filetype;
  gui_menu *m = &menu_load;
  FUNC3(m);
  FUNC2(m,30,0);

  while (1)
  {
    ret = FUNC4(m);

    switch (ret)
    {
      /*** Button B ***/
      case -1: 
        FUNC2(m,30,1);
        FUNC1(m);
        return 0;

      /*** Load from selected device */
      default:
      {
        /* ROM File type */
        filetype = ret - 1;

        /* Try to open current directory */
        if (ret > 0)
        {
          ret = FUNC5(config.l_device, filetype);
        }
        else
        {
          ret = FUNC5(TYPE_RECENT, filetype);
        }

        if (ret)
        {
          FUNC1(m);
          if (FUNC0(filetype))
          {
            /* directly jump to game */
            return 1;
          }
          FUNC3(m);
        }
        break;
      }
    }
  }

  return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int enable; scalar_t__* text; scalar_t__* code; } ;
struct TYPE_7__ {scalar_t__ autocheat; } ;
struct TYPE_6__ {TYPE_1__* buttons; } ;
struct TYPE_5__ {int* shift; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUTTON_ACTIVE ; 
 char* DEFAULT_PATH ; 
 int MAX_CHEATS ; 
 int MAX_DESC_LENGTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* cheatlist ; 
 TYPE_3__ config ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int maxcheats ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ menu_cheats ; 
 scalar_t__ offset ; 
 char* rom_filename ; 
 scalar_t__ selection ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*,int) ; 

void FUNC10(void)
{
  int len;
  int cnt = 0;
  char temp[256];

  /* reset cheat count */
  maxcheats = 0;
  
  /* make cheat filename */
  FUNC6(temp, "%s/cheats/%s.pat", DEFAULT_PATH, rom_filename);

  /* open file */
  FILE *f = FUNC4(temp, "r");
  if (f)
  {
    /* clear string */
    FUNC5(temp, 0, 256);

    /* read cheats from file (one line per cheat) */
    while (FUNC3(temp, 256, f) && (maxcheats < MAX_CHEATS) && (cnt < MAX_CHEATS))
    {
      /* remove CR & EOL chars */
      if ((temp[FUNC8(temp) - 2] == 0x0d) || (temp[FUNC8(temp) - 2] == 0x0a)) temp[FUNC8(temp) - 2] = 0;
      else temp[FUNC8(temp) - 1] = 0;

      /* check cheat validty */
      len = FUNC1(temp, maxcheats);

      if (len)
      {
        /* copy cheat code */
        FUNC9(cheatlist[maxcheats].code, temp, len);
        cheatlist[maxcheats].code[len] = 0;
        len++;

        /* jump TAB and SPACE characters */
        while ((temp[len] == 0x20) || (temp[len] == 0x09)) len++;

        /* copy cheat description */
        FUNC9(cheatlist[maxcheats].text, &temp[len], MAX_DESC_LENGTH - 1);
        cheatlist[maxcheats].text[MAX_DESC_LENGTH - 1] = 0;

        /* increment cheat count */
        maxcheats++;
      }
      else if (!FUNC7(temp,"ON") && config.autocheat)
      {
        /* enable flag */
        cheatlist[cnt++].enable = 1;
      }
      else if (!FUNC7(temp,"OFF") && config.autocheat)
      {
        /* disable flag */
        cheatlist[cnt++].enable = 0;
      }
    }

    /* by default, disable cheats that were not flagged */
    while (cnt < maxcheats) cheatlist[cnt++].enable = 0;

    /* close file */
    FUNC2(f);
  }

  /* apply ROM patches */
  FUNC0();

  /* adjust menu buttons */
  for (cnt=0; cnt<10; cnt++)
  {
    if (cnt < maxcheats)
    {
      menu_cheats.buttons[cnt].state |= BUTTON_ACTIVE;
      menu_cheats.buttons[cnt].shift[1] = 1;
    }
    else if (cnt == maxcheats)
    {
      menu_cheats.buttons[cnt].state |= BUTTON_ACTIVE;
      menu_cheats.buttons[cnt].shift[1] = 0;
    }
    else
    {
      menu_cheats.buttons[cnt].shift[1] = 0;
      menu_cheats.buttons[cnt].state &= ~BUTTON_ACTIVE;
    }
  }

  /* reset menu */
  selection = offset = 0;
}
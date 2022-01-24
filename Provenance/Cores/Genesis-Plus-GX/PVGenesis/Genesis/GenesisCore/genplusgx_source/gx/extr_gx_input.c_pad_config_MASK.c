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
typedef  int u16 ;
struct TYPE_2__ {int** pad_keymap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t KEY_MENU ; 
 int MAX_KEYS ; 
 int PAD_BUTTON_A ; 
 int PAD_BUTTON_B ; 
 int PAD_BUTTON_START ; 
 int PAD_BUTTON_X ; 
 int PAD_BUTTON_Y ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int PAD_TRIGGER_L ; 
 int PAD_TRIGGER_R ; 
 int PAD_TRIGGER_Z ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ config ; 
 int inputs_disabled ; 
 char** keyname ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(int chan, int first_key, int last_key)
{
  u16 p = 0;
  char msg[64];

  /* disable background PAD scanning */
  inputs_disabled = 1;

  /* Check if PAD is connected */
  FUNC5();
  if (!(FUNC4() & (1<<chan)))
  {
    /* restore inputs update callback */
    FUNC6(msg, "PAD #%d is not connected !", chan+1);
    FUNC1("Error",msg);

    /* re-enable background PAD scanning and exit */
    inputs_disabled = 0;
    return;
  }

  /* Configure each keys */
  do
  {
    /* ignore unused keys */
    if (FUNC7(keyname[first_key], "N.A"))
    {
      /* remove any pending keys */
      while (FUNC3(chan))
      {
        FUNC5();
        FUNC4();
      }

      /* configurable button */
      FUNC6(msg,"Press key for %s\n(D-PAD to return)",keyname[first_key]);
      FUNC0(0,msg);

      /* wait for user input */
      p = 0;
      while (!p)
      {
        FUNC5();
        FUNC4();
        p = FUNC2(chan);
      }

      /* find pressed key */
      if (p & PAD_BUTTON_A) p = PAD_BUTTON_A;
      else if (p & PAD_BUTTON_B) p = PAD_BUTTON_B;
      else if (p & PAD_BUTTON_X) p = PAD_BUTTON_X;
      else if (p & PAD_BUTTON_Y) p = PAD_BUTTON_Y;
      else if (p & PAD_TRIGGER_R) p = PAD_TRIGGER_R;
      else if (p & PAD_TRIGGER_L) p = PAD_TRIGGER_L;
      else if (p & PAD_TRIGGER_Z) p = PAD_TRIGGER_Z;
      else if (p & PAD_BUTTON_START) p = PAD_BUTTON_START;
      else first_key = MAX_KEYS;

      /* update key mapping */
      if (first_key < MAX_KEYS)
      {
        config.pad_keymap[chan][first_key] = p;
      }
    }
  }
  while (first_key++ < last_key);

  /* remove any pending keys */
  while (FUNC3(chan))
  {
    FUNC5();
    FUNC4();
  }

  /* Configurable menu key */
  FUNC0(0,"Press key(s) for MENU");

  /* reset key combo */
  config.pad_keymap[chan][KEY_MENU] = 0;

  /* wait for user input */
  p = 0;
  while (!p)
  {
    /* update PAD status */
    FUNC5();
    FUNC4();
    p = FUNC3(chan);
  }

  /* register keys until none are pressed anymore */
  while (p)
  {
    /* update key combo */
    config.pad_keymap[chan][KEY_MENU] |= p;

    /* update PAD status */
    FUNC5();
    FUNC4();
    p = FUNC3(chan);
  }

  /* re-enable background PAD scanning and exit */
  inputs_disabled = 0;
}
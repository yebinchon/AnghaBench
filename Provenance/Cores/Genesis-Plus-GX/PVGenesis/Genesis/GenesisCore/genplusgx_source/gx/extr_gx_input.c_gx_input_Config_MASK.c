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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * system; } ;

/* Variables and functions */
#define  DEVICE_LIGHTGUN 137 
#define  DEVICE_MOUSE 136 
#define  DEVICE_PAD2B 135 
#define  DEVICE_PAD3B 134 
#define  DEVICE_PAD6B 133 
#define  DEVICE_PADDLE 132 
#define  DEVICE_PICO 131 
#define  DEVICE_SPORTSPAD 130 
#define  DEVICE_TEREBI 129 
#define  DEVICE_XE_A1P 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t KEY_BUTTONA ; 
 size_t KEY_BUTTONB ; 
 size_t KEY_BUTTONC ; 
 size_t KEY_BUTTONX ; 
 size_t KEY_BUTTONY ; 
 size_t KEY_BUTTONZ ; 
 size_t KEY_MODE ; 
 size_t KEY_START ; 
 int /*<<< orphan*/  SYSTEM_JUSTIFIER ; 
 int /*<<< orphan*/  SYSTEM_MENACER ; 
 TYPE_1__ input ; 
 int /*<<< orphan*/ * keyname ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 

void FUNC4(u8 chan, u8 device, u8 type)
{
  int first_key, last_key;

  /* emulated device */
  switch (type)
  {
    case DEVICE_PADDLE:
    case DEVICE_PAD2B:
    case DEVICE_SPORTSPAD:
    {
      first_key = KEY_BUTTONB;
      last_key = KEY_START;
      FUNC2(keyname[KEY_BUTTONB],"Button 1");
      FUNC2(keyname[KEY_BUTTONC],"Button 2");
      FUNC2(keyname[KEY_START],"PAUSE Button");
      break;
    }

    case DEVICE_XE_A1P:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_MODE;
      FUNC2(keyname[KEY_BUTTONA],"Button A");
      FUNC2(keyname[KEY_BUTTONB],"Button B");
      FUNC2(keyname[KEY_BUTTONC],"Button C");
      FUNC2(keyname[KEY_START],"START Button");
      FUNC2(keyname[KEY_BUTTONX],"Button D");
      FUNC2(keyname[KEY_BUTTONY],"Button E1");
      FUNC2(keyname[KEY_BUTTONZ],"Button E2");
      FUNC2(keyname[KEY_MODE],"SELECT Button");
      break;
    }

    case DEVICE_MOUSE:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      FUNC2(keyname[KEY_BUTTONA],"Middle Button");
      FUNC2(keyname[KEY_BUTTONB],"Left Button");
      FUNC2(keyname[KEY_BUTTONC],"Right Button");
      FUNC2(keyname[KEY_START],"START Button");
      break;
    }

    case DEVICE_PAD3B:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      FUNC2(keyname[KEY_BUTTONA],"Button A");
      FUNC2(keyname[KEY_BUTTONB],"Button B");
      FUNC2(keyname[KEY_BUTTONC],"Button C");
      FUNC2(keyname[KEY_START],"START Button");
      break;
    }

    case DEVICE_PAD6B:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_MODE;
      FUNC2(keyname[KEY_BUTTONA],"Button A");
      FUNC2(keyname[KEY_BUTTONB],"Button B");
      FUNC2(keyname[KEY_BUTTONC],"Button C");
      FUNC2(keyname[KEY_START],"START Button");
      FUNC2(keyname[KEY_BUTTONX],"Button X");
      FUNC2(keyname[KEY_BUTTONY],"Button Y");
      FUNC2(keyname[KEY_BUTTONZ],"Button Z");
      FUNC2(keyname[KEY_MODE],"MODE Button");
      break;
    }

    case DEVICE_LIGHTGUN:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      if (input.system[1] == SYSTEM_MENACER)
      {
        FUNC2(keyname[KEY_BUTTONA],"TRIGGER Button");
        FUNC2(keyname[KEY_BUTTONB],"Button B");
        FUNC2(keyname[KEY_BUTTONC],"Button C");
        FUNC2(keyname[KEY_START],"START Button");
      }
      else if (input.system[1] == SYSTEM_JUSTIFIER)
      {
        FUNC2(keyname[KEY_BUTTONA],"TRIGGER Button");
        FUNC2(keyname[KEY_BUTTONB],"N.A");
        FUNC2(keyname[KEY_BUTTONC],"N.A");
        FUNC2(keyname[KEY_START],"START Button");
      }
      else
      {
        FUNC2(keyname[KEY_BUTTONA],"TRIGGER Button");
        FUNC2(keyname[KEY_BUTTONB],"N.A");
        FUNC2(keyname[KEY_BUTTONC],"N.A");
        FUNC2(keyname[KEY_START],"PAUSE Button");
      }
      break;
    }

    case DEVICE_PICO:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONB;
      FUNC2(keyname[KEY_BUTTONA],"PEN Button");
      FUNC2(keyname[KEY_BUTTONB],"RED Button");
      break;
    }

    case DEVICE_TEREBI:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONA;
      FUNC2(keyname[KEY_BUTTONA],"PEN Button");
      break;
    }

    default:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONA;
      FUNC2(keyname[KEY_BUTTONA],"N.A");
      FUNC0("Info","Activator is not configurable !");
      break;
    }
  }

  /* Input device */
  switch (device)
  {
    case 0:
    {
      FUNC1(chan, first_key, last_key);
      break;
    }

    default:
    {
#ifdef HW_RVL
      wpad_config(device - 1, chan, first_key, last_key);
#endif
      break;
    }
  }
}
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
struct TYPE_2__ {int* dev; scalar_t__* system; } ;

/* Variables and functions */
#define  DEVICE_ACTIVATOR 137 
#define  DEVICE_LIGHTGUN 136 
#define  DEVICE_MOUSE 135 
#define  DEVICE_PAD2B 134 
#define  DEVICE_PAD3B 133 
#define  DEVICE_PAD6B 132 
#define  DEVICE_PADDLE 131 
#define  DEVICE_SPORTSPAD 130 
#define  DEVICE_TEREBI 129 
#define  DEVICE_XE_A1P 128 
 int MAX_DEVICES ; 
 scalar_t__ SYSTEM_TEAMPLAYER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ input ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(void)
{
  /* Reset input devices */
  int i;
  for (i=0; i<MAX_DEVICES; i++)
  {
    switch (input.dev[i])
    {
      case DEVICE_PAD2B:
      case DEVICE_PAD3B:
      case DEVICE_PAD6B:
      {
        FUNC1(i);
        break;
      }

      case DEVICE_LIGHTGUN:
      {
        FUNC2(i);
        break;
      }

      case DEVICE_MOUSE:
      {
        FUNC3(i);
        break;
      }

      case DEVICE_ACTIVATOR:
      {
        FUNC0(i >> 2);
        break;
      }

      case DEVICE_XE_A1P:
      {
        FUNC8(i);
        break;
      }

      case DEVICE_PADDLE:
      {
        FUNC4(i);
        break;
      }

      case DEVICE_SPORTSPAD:
      {
        FUNC5(i);
        break;
      }

      case DEVICE_TEREBI:
      {
        FUNC7();
        break;
      }

      default:
      {
        break;
      }
    }
  }

  /* Team Player */
  for (i=0; i<2; i++)
  {
    if (input.system[i] == SYSTEM_TEAMPLAYER)
    {
      FUNC6(i);
    }
  }
}
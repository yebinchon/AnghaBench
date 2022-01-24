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
struct TYPE_2__ {int* dev; } ;

/* Variables and functions */
#define  DEVICE_LIGHTGUN 129 
#define  DEVICE_PAD6B 128 
 int MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ input ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
  int i;
  for (i=0; i<MAX_DEVICES; i++)
  {
    switch (input.dev[i])
    {
      case DEVICE_PAD6B:
      {
        FUNC0(i);
        break;
      }

      case DEVICE_LIGHTGUN:
      {
        FUNC1(i);
        break;
      }
    }
  }
}
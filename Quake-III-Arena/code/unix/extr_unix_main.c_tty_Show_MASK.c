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
struct TYPE_2__ {int cursor; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ tty_con ; 
 scalar_t__ ttycon_hide ; 
 int ttycon_on ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int) ; 

void FUNC2()
{
  int i;
  FUNC0(ttycon_on);
  FUNC0(ttycon_hide>0);
  ttycon_hide--;
  if (ttycon_hide == 0)
  {
    if (tty_con.cursor)
    {
      for (i=0; i<tty_con.cursor; i++)
      {
        FUNC1(1, tty_con.buffer+i, 1);
      }
    }
  }
}
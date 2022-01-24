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
struct TYPE_2__ {int mode3; char reg0; int reg9; } ;

/* Variables and functions */
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void FUNC3(int inst, int size)
{
  FUNC0(inst);
  FUNC0(size);
  FUNC1(' ');
  if(d.mode3&1)	/* -(Ay),-(Ax) */
    {
      FUNC0('-(A0'+d.reg0);
      FUNC0('),-(');
      FUNC0('A0)' + (d.reg9<<8));
    }
  else				/* Dy,Dx */
    {
      FUNC2(d.reg0);
      FUNC1(',');
      FUNC2(d.reg9);
    }
}
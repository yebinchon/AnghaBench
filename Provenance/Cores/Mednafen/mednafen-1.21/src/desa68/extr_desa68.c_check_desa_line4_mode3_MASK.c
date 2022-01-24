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
struct TYPE_2__ {int mode6; int reg9; int adrmode0; int w; int status; int branch; int /*<<< orphan*/  szchar; int /*<<< orphan*/  reg0; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 int DESA68_INST ; 
 int DESA68_INT ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC4(void)
{
  if (d.mode6 != 3) {
    return 0;
  }

  switch(d.reg9)
    {

    case 0:				/* MOVE FROM SR */
      {
	int modemsk = 00775;
	if(!(modemsk&(1<<d.adrmode0)))
	  break;
	FUNC0('MOVE');
	FUNC0(' SR,');
	FUNC3(d.mode3, d.reg0, 'W');
	return 1;
      }

    case 1:
      break;

    case 2:			/* MOVE TO CCR */
      {
	int modemsk = 07775;
	if(!(modemsk&(1<<d.adrmode0)))
	  break;
	FUNC0('MOVE');
	FUNC1 (' ');
	FUNC3(d.mode3, d.reg0, 'B');
	FUNC0(',CCR');
	return 1;
      }

    case 3:			/* MOVE TO SR */
      {
	int modemsk = 07775;
	if(!(modemsk&(1<<d.adrmode0)))
	  break;
	FUNC0('MOVE');
	FUNC1 (' ');
	FUNC3(d.mode3, d.reg0, 'W');
	FUNC0(',SR');
	return 1;
      }

    case 4:
      break;

    case 5:			/* TAS */
      {
	d.szchar = 0;
	if(FUNC2('TAS', 00775)) {
	  return 1;
	} else if(d.w == 0x4AFC) {
	  FUNC0('ILLE');
	  FUNC0('GAL');
	  d.status = DESA68_INST | DESA68_INT;
	  d.branch = 0x10;
	  return 1;
	}
      }
      break;

    case 6:
      break;

    case 7:
      break;
    }
  return 0;
}
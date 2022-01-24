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
struct TYPE_2__ {int w; int adrmode0; int mode3; int reg0; } ;

/* Variables and functions */
 int MODE_pAN ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5()
{
  int modemsk, regmsk;
  int mode3, reg0, w;
  if((d.w&05600)!=04200)
    return 0;
  modemsk = !(d.w&02000) ? 00764 : 03754;
  if(!(modemsk&(1<<d.adrmode0)))
    return 0;

  FUNC0('MOVE');
  FUNC0('M.');
  FUNC1 (!(d.w&0100)?'W':'L');
  FUNC1 (' ');

  w = d.w;
  mode3 = d.mode3;
  reg0 = d.reg0;
  regmsk = FUNC4();

  /*  -> reg */
  if(w&02000)
    {
      FUNC2(mode3, reg0, 0);
      FUNC1(',');
      FUNC3(regmsk,0);
    }
  /* -> mem */
  else
    {
      FUNC3(regmsk, (mode3==MODE_pAN) ? 15 : 0);
      FUNC1(',');
      FUNC2(mode3, reg0, 0);
    }
  return 1;
}
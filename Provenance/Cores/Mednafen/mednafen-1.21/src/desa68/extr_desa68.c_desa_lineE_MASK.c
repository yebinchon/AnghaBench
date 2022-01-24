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
typedef  char u16 ;
struct TYPE_2__ {int opsz; int reg9; int adrmode0; int w; char reg0; char szchar; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
  static u16 shf_ascii[4] = { 'AS', 'LS', 'RO', 'RO' };

  /* Memory */
  if(d.opsz==3)
    {
      const int modemsk = 00774;
      int type = d.reg9;
      if (!(modemsk & (1<<d.adrmode0)) || (type&4)) {
	FUNC2();
	return;
      }
      FUNC0(shf_ascii[type]);
      FUNC1 ((d.w&0400) ? 'L' :'R');
      if(type==2) FUNC1('X');
      FUNC1 (' ');
      FUNC3(d.mode3, d.reg0, 0);
    }

  /* Register */
  else
    {
      int type = (d.w>>3)&3;
      FUNC0 (shf_ascii[type]);
      FUNC1 ((d.w&0400) ? 'L' :'R');
      if(type==2) FUNC1('X');
      FUNC0(d.szchar);
      /* dn,dn */
      if(d.w&(1<<5))
	FUNC0(' D0'+d.reg9);
      /* #x,dn */
      else
	FUNC0(' #1'+((d.reg9-1)&7));
      FUNC0(',D0'+d.reg0);
    }
}
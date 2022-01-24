#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  Comment ; 
 int FUNC0 (int) ; 
 int DisaPc ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 

int FUNC3(char *t,int ea,int size)
{
  ea&=0x3f; t[0]=0;
  if ((ea&0x38)==0x00) { FUNC2(t,"d%d",ea  ); return 0; }    // 000rrr
  if ((ea&0x38)==0x08) { FUNC2(t,"a%d",ea&7); return 0; }    // 001rrr
  if ((ea&0x38)==0x10) { FUNC2(t,"(a%d)",ea&7); return 0; }  // 010rrr
  if ((ea&0x38)==0x18) { FUNC2(t,"(a%d)+",ea&7); return 0; } // 011rrr
  if ((ea&0x38)==0x20) { FUNC2(t,"-(a%d)",ea&7); return 0; } // 100rrr
  if ((ea&0x38)==0x28) { FUNC2(t,"($%x,a%d)",FUNC1(DisaPc)&0xffff,ea&7); DisaPc+=2; return 0; } // 101rrr

  if ((ea&0x38)==0x30)
  {
    // 110nnn - An + Disp + D/An
    int areg=0,ext=0,off=0,da=0,reg=0,wol=0,scale=0;
    ext=FUNC1(DisaPc)&0xffff;
    
    areg=ea&7;
    off=ext&0xff;    da =ext&0x8000?'a':'d';
    reg=(ext>>12)&7; wol=ext&0x0800?'l':'w';
    scale=1<<((ext>>9)&3);

    if (scale<2) FUNC2(t,"($%x,a%d,%c%d.%c)",   off,areg,da,reg,wol);
    else         FUNC2(t,"($%x,a%d,%c%d.%c*%d)",off,areg,da,reg,wol,scale); // 68020

    DisaPc+=2;
    return 0;
  }

  if (ea==0x38) { FUNC2(t,"$%x.w",FUNC1(DisaPc)&0xffff); DisaPc+=2; return 0; } // 111000 - Absolute short
  if (ea==0x39) { FUNC2(t,"$%x.l",FUNC0(DisaPc));        DisaPc+=4; return 0; } // 111001 - Absolute long

  if (ea==0x3a)
  {
    // 111010 - PC Relative
    int ext=FUNC1(DisaPc)&0xffff;
    FUNC2(t,"($%x,pc)",ext);
    FUNC2(Comment,"; =%x",DisaPc+(short)ext); // Comment where pc+ext is
    DisaPc+=2;
    return 0;
  }

  if (ea==0x3b)
  {
    // 111011 - PC Relative + D/An
    int ext=0,off=0,da=0,reg=0,wol=0,scale=0;
    ext=FUNC1(DisaPc)&0xffff;
    
    off=ext&0xff;    da =ext&0x8000?'a':'d';
    reg=(ext>>12)&7; wol=ext&0x0800?'l':'w';
    scale=1<<((ext>>9)&3);

    if (scale<2) FUNC2(t,"($%x,pc,%c%d.%c)",   off,da,reg,wol);
    else         FUNC2(t,"($%x,pc,%c%d.%c*%d)",off,da,reg,wol,scale); // 68020

    FUNC2(Comment,"; =%x",DisaPc+(char)off); // Comment where pc+ext is
    DisaPc+=2;
    return 0;
  }

  if (ea==0x3c)
  {
    // 111100 - Immediate
    switch (size)
    {
      case 0: FUNC2(t,"#$%x",FUNC1(DisaPc)&0x00ff); DisaPc+=2; return 0;
      case 1: FUNC2(t,"#$%x",FUNC1(DisaPc)&0xffff); DisaPc+=2; return 0;
      case 2: FUNC2(t,"#$%x",FUNC0(DisaPc)       ); DisaPc+=4; return 0;
    }
    return 1;
  }

// Unknown effective address
  FUNC2(t,"ea=(%d%d%d %d%d%d)",
    (ea>>5)&1,(ea>>4)&1,(ea>>3)&1,
    (ea>>2)&1,(ea>>1)&1, ea    &1);
  return 1;
}
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
typedef  scalar_t__ s8 ;
typedef  int s32 ;
struct TYPE_2__ {int w; int memmsk; int status; int branch; scalar_t__ pc; } ;

/* Variables and functions */
 int DESA68_BRA ; 
 int DESA68_BSR ; 
 int DESA68_INST ; 
 double* bcc_ascii ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
  s32 a;
  int cond = (d.w>>8) & 0xF;
  FUNC1(('B'<<16) + bcc_ascii[cond]);
  /* Bcc.S */
  if(d.w&255)
    {
      FUNC1('.S');
      a = (s32)(s8)d.w;
      a += (s32)d.pc;
    }
  /* Bcc.W */
  else a = FUNC3();
  FUNC2(' ');

  FUNC0(a&d.memmsk);

  d.status = DESA68_INST | DESA68_BRA | (-(cond!=0) & DESA68_BSR );
  d.branch = a;
}
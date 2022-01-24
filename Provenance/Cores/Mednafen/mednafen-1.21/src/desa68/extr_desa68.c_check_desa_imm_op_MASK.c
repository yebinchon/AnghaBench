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
typedef  char u32 ;
struct TYPE_2__ {int w; int reg9; int opsz; int szchar; scalar_t__ reg0; scalar_t__ mode3; } ;

/* Variables and functions */
 scalar_t__ MODE_ABSW ; 
 scalar_t__ MODE_IMM ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(void)
{
  static u32 fn[8] =
    {
      'ORI' , 'ANDI', 'SUBI', 'ADDI',
      '???I', 'EORI', 'CMPI', '???I'
    };
  int modemsk=0x6F;

  if((d.w&0x100) || !(modemsk&(1<<d.reg9)) || d.opsz==3)
    return 0;

  FUNC0(fn[d.reg9] );
  FUNC0((d.szchar<<8) + ' ');
  FUNC2(MODE_ABSW, MODE_IMM-MODE_ABSW, d.szchar);
  FUNC1(',');
  FUNC2(d.mode3, d.reg0, d.szchar);
  return 1;
}
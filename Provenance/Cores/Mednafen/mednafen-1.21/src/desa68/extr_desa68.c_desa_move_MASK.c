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
typedef  int u8 ;
typedef  int s32 ;
struct TYPE_2__ {int w; scalar_t__ adrmode6; } ;

/* Variables and functions */
 scalar_t__ MODE_AN ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

__attribute__((used)) static void FUNC3()
{
  s32 w=d.w;
  int movsz  = (u8)('WLB?' >> ((w&(3<<12))>>(12-3)));
  FUNC0('MOVE');
  FUNC0(((d.adrmode6==MODE_AN)? ('A'<<24) : 0) + ('.'<<16) + ' ' + (movsz<<8) );
  FUNC2(0,w,movsz);
  FUNC1(',');
  FUNC2(6,w,movsz);
}
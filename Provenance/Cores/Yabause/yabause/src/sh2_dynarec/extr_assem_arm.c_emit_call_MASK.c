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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int a)
{
  FUNC0("bl %x (%x+%x)\n",a,(int)out,a-(int)out-8);
  u32 offset=FUNC1(a);
  FUNC2(0xeb000000|offset);
}
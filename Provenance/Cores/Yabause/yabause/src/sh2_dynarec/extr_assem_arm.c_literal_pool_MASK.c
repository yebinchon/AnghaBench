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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int literalcount ; 
 int** literals ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(int n)
{
  if(!literalcount) return;
  if(n) {
    if((int)out-literals[0][0]<4096-n) return;
  }
  u32 *ptr;
  int i;
  for(i=0;i<literalcount;i++)
  {
    ptr=(u32 *)literals[i][0];
    u32 offset=(u32)out-(u32)ptr-8;
    FUNC0(offset<4096);
    FUNC0(!(offset&3));
    *ptr|=offset;
    FUNC1(literals[i][1]);
  }
  literalcount=0;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  literalcount ; 
 int** literals ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(int n)
{
  if(!literalcount) return;
  if(n) {
    if((int)out-literals[0][0]<4096-n) return;
  }
  int jaddr=(int)out;
  FUNC0(0);
  FUNC1(0);
  FUNC2(jaddr,(int)out);
}
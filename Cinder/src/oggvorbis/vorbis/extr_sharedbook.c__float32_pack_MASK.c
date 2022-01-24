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
 long VQ_FEXP_BIAS ; 
 int VQ_FMAN ; 
 long FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (float,int) ; 
 double FUNC2 (float) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 

long FUNC4(float val){
  int sign=0;
  long exp;
  long mant;
  if(val<0){
    sign=0x80000000;
    val= -val;
  }
  exp= FUNC0(FUNC2(val)/FUNC2(2.f)+.001); //+epsilon
  mant=FUNC3(FUNC1(val,(VQ_FMAN-1)-exp));
  exp=(exp+VQ_FEXP_BIAS)<<VQ_FMAN;

  return(sign|exp|mant);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* _p; } ;
typedef  TYPE_1__ TRex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TRex *exp)
{
	int ret = *exp->_p-'0';
	int positions = 10;
	exp->_p++;
	while(FUNC1((int) *exp->_p)) {
		ret = ret*10+(*exp->_p++-'0');
		if(positions==1000000000) FUNC2(exp,FUNC0("overflow in numeric constant"));
		positions *= 10;
	};
	return ret;
}
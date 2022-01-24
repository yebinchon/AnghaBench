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
typedef  void* UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  OptionList; void* Id; void* Code; } ;
typedef  TYPE_1__ PPP_LCP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

PPP_LCP *FUNC2(UCHAR code, UCHAR id)
{
	PPP_LCP *c = FUNC1(sizeof(PPP_LCP));

	c->Code = code;
	c->Id = id;
	c->OptionList = FUNC0(NULL);

	return c;
}
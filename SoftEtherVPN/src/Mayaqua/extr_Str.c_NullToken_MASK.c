#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 void* FUNC0 (int) ; 

TOKEN_LIST *FUNC1()
{
	TOKEN_LIST *ret = FUNC0(sizeof(TOKEN_LIST));
	ret->Token = FUNC0(0);

	return ret;
}
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
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int FUNC2 (struct socket*) ; 

int
FUNC3(struct socket *so)
{
	int error;

	FUNC0(so, 1);
	error = FUNC2(so);
	FUNC1(so, 1);
	return (error);
}
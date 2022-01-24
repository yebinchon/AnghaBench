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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  DefElem ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static DefElem *
FUNC2(char *name, int value)
{
	return FUNC0(name, (Node *) FUNC1(value), -1);
}
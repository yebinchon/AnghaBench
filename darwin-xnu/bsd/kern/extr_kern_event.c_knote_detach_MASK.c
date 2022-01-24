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
struct knote {int dummy; } ;
struct klist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct klist*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist*,struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_selnext ; 
 int /*<<< orphan*/  knote ; 

int
FUNC2(struct klist *list, struct knote *kn)
{
	FUNC1(list, kn, knote, kn_selnext);
	return (FUNC0(list));
}
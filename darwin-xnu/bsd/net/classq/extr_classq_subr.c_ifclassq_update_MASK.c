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
struct ifclassq {int dummy; } ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct ifclassq *ifq, cqev_t ev)
{
	FUNC1(ifq);
	FUNC3(FUNC0(ifq));
	FUNC2(ifq, ev);
}
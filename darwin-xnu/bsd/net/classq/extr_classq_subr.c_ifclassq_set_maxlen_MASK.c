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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifclassq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  if_sndq_maxlen ; 

void
FUNC3(struct ifclassq *ifq, u_int32_t maxqlen)
{
	FUNC0(ifq);
	if (maxqlen == 0)
		maxqlen = if_sndq_maxlen;
	FUNC1(ifq, maxqlen);
	FUNC2(ifq);
}
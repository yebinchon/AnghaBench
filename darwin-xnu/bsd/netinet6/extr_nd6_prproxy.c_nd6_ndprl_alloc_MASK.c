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
struct nd6_prproxy_prelist {int dummy; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nd6_prproxy_prelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ndprl_size ; 
 int /*<<< orphan*/  ndprl_zone ; 
 struct nd6_prproxy_prelist* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nd6_prproxy_prelist* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nd6_prproxy_prelist *
FUNC3(int how)
{
	struct nd6_prproxy_prelist *ndprl;

	ndprl = (how == M_WAITOK) ? FUNC1(ndprl_zone) :
	    FUNC2(ndprl_zone);
	if (ndprl != NULL)
		FUNC0(ndprl, ndprl_size);

	return (ndprl);
}
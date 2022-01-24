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
struct nd6_prproxy_solsrc {int dummy; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nd6_prproxy_solsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  solsrc_size ; 
 int /*<<< orphan*/  solsrc_zone ; 
 struct nd6_prproxy_solsrc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nd6_prproxy_solsrc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nd6_prproxy_solsrc *
FUNC3(int how)
{
	struct nd6_prproxy_solsrc *ssrc;

	ssrc = (how == M_WAITOK) ? FUNC1(solsrc_zone) :
	    FUNC2(solsrc_zone);
	if (ssrc != NULL)
		FUNC0(ssrc, solsrc_size);

	return (ssrc);
}
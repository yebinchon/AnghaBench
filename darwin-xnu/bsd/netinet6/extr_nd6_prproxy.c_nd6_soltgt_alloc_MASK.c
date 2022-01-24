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
struct nd6_prproxy_soltgt {int /*<<< orphan*/  soltgt_q; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nd6_prproxy_soltgt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soltgt_size ; 
 int /*<<< orphan*/  soltgt_zone ; 
 struct nd6_prproxy_soltgt* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nd6_prproxy_soltgt* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nd6_prproxy_soltgt *
FUNC4(int how)
{
	struct nd6_prproxy_soltgt *soltgt;

	soltgt = (how == M_WAITOK) ? FUNC2(soltgt_zone) :
	    FUNC3(soltgt_zone);
	if (soltgt != NULL) {
		FUNC1(soltgt, soltgt_size);
		FUNC0(&soltgt->soltgt_q);
	}
	return (soltgt);
}
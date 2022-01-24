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
typedef  int /*<<< orphan*/  u_int64_t ;
struct pfr_ktable {int /*<<< orphan*/  pfrkt_cnt; } ;
struct pfr_kentry {int /*<<< orphan*/  pfrke_tzero; } ;
struct pfr_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pfr_kentry* FUNC0 (struct pfr_addr*,int) ; 
 struct pfr_kentry* FUNC1 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 int FUNC2 (struct pfr_ktable*,struct pfr_kentry*) ; 

int
FUNC3(struct pfr_ktable *kt, struct pfr_addr *ad, u_int64_t tzero)
{
	struct pfr_kentry	*p;
	int			 rv;

	p = FUNC1(kt, ad, 1);
	if (p != NULL)
		return (0);
	p = FUNC0(ad, 1);
	if (p == NULL)
		return (EINVAL);

	rv = FUNC2(kt, p);
	if (rv)
		return (rv);

	p->pfrke_tzero = tzero;
	kt->pfrkt_cnt++;

	return (0);
}
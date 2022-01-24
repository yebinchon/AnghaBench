#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in6_cga_nodecfg {int /*<<< orphan*/  cga_prepare; int /*<<< orphan*/  cga_pubkey; } ;
struct TYPE_2__ {int /*<<< orphan*/  cga_prepare; int /*<<< orphan*/  cga_pubkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ in6_cga ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct in6_cga_nodecfg *cfg)
{
	FUNC0(cfg != NULL);
	FUNC1(LCK_MTX_ASSERT_OWNED);

	cfg->cga_pubkey = in6_cga.cga_pubkey;
	cfg->cga_prepare = in6_cga.cga_prepare;
}
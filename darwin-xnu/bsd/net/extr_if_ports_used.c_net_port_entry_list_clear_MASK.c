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
struct net_port_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct net_port_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ net_port_entry_count ; 
 int /*<<< orphan*/  net_port_entry_gen ; 
 int /*<<< orphan*/  net_port_entry_head_lock ; 
 int /*<<< orphan*/  net_port_entry_list ; 
 int /*<<< orphan*/  net_port_entry_zone ; 
 int /*<<< orphan*/  npe_next ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_port_entry*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct net_port_entry *npe;

	FUNC0(&net_port_entry_head_lock, LCK_MTX_ASSERT_OWNED);

	while ((npe = FUNC1(&net_port_entry_list)) != NULL) {
		FUNC2(&net_port_entry_list, npe_next);

		FUNC3(net_port_entry_zone, npe);
	}
	net_port_entry_count = 0;
	net_port_entry_gen++;
}
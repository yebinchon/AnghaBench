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
struct nwk_wq_entry {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nwk_wq_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nwk_wq_head ; 
 int /*<<< orphan*/  nwk_wq_link ; 
 int /*<<< orphan*/  nwk_wq_lock ; 
 int /*<<< orphan*/  nwk_wq_waitch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct nwk_wq_entry *nwk_item)
{
	FUNC1(&nwk_wq_lock);
	FUNC0(&nwk_wq_head, nwk_item, nwk_wq_link);
	FUNC2(&nwk_wq_lock);
	FUNC3((caddr_t)&nwk_wq_waitch);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pve_next; } ;
typedef  TYPE_1__ pv_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int pv_kern_free_count ; 
 TYPE_1__* pv_kern_free_list ; 
 int /*<<< orphan*/  pv_kern_free_list_lock ; 

__attribute__((used)) static inline void	FUNC2(pv_entry_t *pv_eh, pv_entry_t *pv_et, int pv_cnt) {
	FUNC0(&pv_kern_free_list_lock);
	pv_et->pve_next = pv_kern_free_list;
	pv_kern_free_list = pv_eh;
	pv_kern_free_count += pv_cnt;
	FUNC1(&pv_kern_free_list_lock);
}
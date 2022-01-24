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
struct bstp_pri_vector {int pv_dport_id; int /*<<< orphan*/  pv_dbridge_id; } ;

/* Variables and functions */
 scalar_t__ INFO_BETTER ; 
 scalar_t__ FUNC0 (struct bstp_pri_vector*,struct bstp_pri_vector*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bstp_pri_vector *pv,
    struct bstp_pri_vector *cpv)
{
	if (FUNC0(pv, cpv) == INFO_BETTER ||
	    (FUNC1(pv->pv_dbridge_id, cpv->pv_dbridge_id) &&
	    (cpv->pv_dport_id & 0xfff) == (pv->pv_dport_id & 0xfff)))
		return (1);
	return (0);
}
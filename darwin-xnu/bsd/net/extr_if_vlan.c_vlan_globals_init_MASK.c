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
typedef  TYPE_1__* vlan_globals_ref ;
struct TYPE_5__ {scalar_t__ verbose; int /*<<< orphan*/  parent_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_VLAN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_vlan ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void)
{
    vlan_globals_ref	v;

    FUNC3();

    if (g_vlan != NULL) {
	return (0);
    }
    v = FUNC2(sizeof(*v), M_VLAN, M_WAITOK);
    if (v != NULL) {
	FUNC0(&v->parent_list);
	v->verbose = 0;
    }
    FUNC4();
    if (g_vlan != NULL) {
	FUNC5();
	if (v != NULL) {
	    FUNC1(v, M_VLAN);
	}
	return (0);
    }
    g_vlan = v;
    FUNC5();
    if (v == NULL) {
	return (ENOMEM);
    }
    return (0);
}
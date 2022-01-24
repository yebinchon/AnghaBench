#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int nb_tracked_methods; int tracked_methods_size; TYPE_2__* tracked_methods; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(RTMPContext *rt, const char *name, int id)
{
    int err;

    if (rt->nb_tracked_methods + 1 > rt->tracked_methods_size) {
        rt->tracked_methods_size = (rt->nb_tracked_methods + 1) * 2;
        if ((err = FUNC1(&rt->tracked_methods, rt->tracked_methods_size *
                               sizeof(*rt->tracked_methods))) < 0) {
            rt->nb_tracked_methods = 0;
            rt->tracked_methods_size = 0;
            return err;
        }
    }

    rt->tracked_methods[rt->nb_tracked_methods].name = FUNC2(name);
    if (!rt->tracked_methods[rt->nb_tracked_methods].name)
        return FUNC0(ENOMEM);
    rt->tracked_methods[rt->nb_tracked_methods].id = id;
    rt->nb_tracked_methods++;

    return 0;
}
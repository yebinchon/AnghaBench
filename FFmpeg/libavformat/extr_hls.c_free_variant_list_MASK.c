#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct variant {struct variant** playlists; } ;
struct TYPE_3__ {int n_variants; struct variant** variants; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct variant*) ; 
 int /*<<< orphan*/  FUNC1 (struct variant***) ; 

__attribute__((used)) static void FUNC2(HLSContext *c)
{
    int i;
    for (i = 0; i < c->n_variants; i++) {
        struct variant *var = c->variants[i];
        FUNC1(&var->playlists);
        FUNC0(var);
    }
    FUNC1(&c->variants);
    c->n_variants = 0;
}
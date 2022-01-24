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
struct sbg_script_synth {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nb_synth; int /*<<< orphan*/  synth; } ;
struct sbg_parser {TYPE_1__ scs; int /*<<< orphan*/  nb_synth_max; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sbg_script_synth* FUNC1 (void**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sbg_parser*,char) ; 
 int FUNC3 (struct sbg_parser*,struct sbg_script_synth*) ; 
 int FUNC4 (struct sbg_parser*,struct sbg_script_synth*) ; 
 int FUNC5 (struct sbg_parser*,struct sbg_script_synth*) ; 
 int FUNC6 (struct sbg_parser*,struct sbg_script_synth*) ; 
 int FUNC7 (struct sbg_parser*,struct sbg_script_synth*) ; 

__attribute__((used)) static int FUNC8(struct sbg_parser *p)
{
    int r;
    struct sbg_script_synth *synth;

    synth = FUNC1((void **)&p->scs.synth, sizeof(*synth),
                             &p->scs.nb_synth, &p->nb_synth_max);
    if (!synth)
        return FUNC0(ENOMEM);
    r = FUNC2(p, '-');
    if (!r)
        r = FUNC5(p, synth);
    if (!r)
        r = FUNC3(p, synth);
    if (!r)
        r = FUNC4(p, synth);
    if (!r)
        r = FUNC7(p, synth);
    /* Unimplemented: wave%d:%f%f/vol (carrier, beat) */
    if (!r)
        r = FUNC6(p, synth);
    if (r <= 0)
        p->scs.nb_synth--;
    return r;
}
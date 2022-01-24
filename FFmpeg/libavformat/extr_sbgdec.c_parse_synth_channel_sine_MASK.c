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
struct sbg_script_synth {int carrier; int beat; int vol; int /*<<< orphan*/  type; } ;
struct sbg_parser {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBG_TYPE_SINE ; 
 int /*<<< orphan*/  FUNC2 (struct sbg_parser*,double*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbg_parser*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,double,int,int*) ; 

__attribute__((used)) static int FUNC5(struct sbg_parser *p,
                                    struct sbg_script_synth *synth)
{
    double carrierf, beatf;
    int carrier, beat, vol;

    if (!FUNC2(p, &carrierf))
        return 0;
    if (!FUNC2(p, &beatf))
        beatf = 0;
    FUNC1(FUNC3(p, &vol));
    if (FUNC4(p->log, carrierf, 1, &carrier) < 0 ||
        FUNC4(p->log, beatf, 1, &beat) < 0)
        return FUNC0(EDOM);
    synth->type    = SBG_TYPE_SINE;
    synth->carrier = carrier;
    synth->beat    = beat;
    synth->vol     = vol;
    return 1;
}
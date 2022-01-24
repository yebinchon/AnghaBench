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
struct sbg_script_synth {int carrier; int vol; int /*<<< orphan*/  type; } ;
struct sbg_parser {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBG_TYPE_BELL ; 
 int /*<<< orphan*/  FUNC2 (struct sbg_parser*,double*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbg_parser*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sbg_parser*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,double,int,int*) ; 

__attribute__((used)) static int FUNC6(struct sbg_parser *p,
                                    struct sbg_script_synth *synth)
{
    double carrierf;
    int carrier, vol;

    if (!FUNC3(p, "bell", 4))
        return 0;
    if (!FUNC2(p, &carrierf))
        return AVERROR_INVALIDDATA;
    FUNC1(FUNC4(p, &vol));
    if (FUNC5(p->log, carrierf, 1, &carrier) < 0)
        return FUNC0(EDOM);
    synth->type    = SBG_TYPE_BELL;
    synth->carrier = carrier;
    synth->vol     = vol;
    return 1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  amixdown; } ;
typedef  TYPE_2__ hb_mixdown_t ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(signal_user_data_t *ud, gint acodec, gint64 layout)
{
    FUNC0("grey_mix_opts()\n");

    const hb_mixdown_t *mix;
    for (mix = FUNC2(NULL); mix != NULL;
         mix = FUNC2(mix))
    {
        FUNC1(ud->builder, "AudioMixdown", mix->amixdown,
                !FUNC3(mix->amixdown, acodec, layout));
    }
}
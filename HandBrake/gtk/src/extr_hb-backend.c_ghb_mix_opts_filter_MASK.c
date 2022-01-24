#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  amixdown; } ;
typedef  TYPE_1__ hb_mixdown_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(GtkComboBox *combo, gint acodec)
{
    FUNC0("ghb_mix_opts_filter()\n");

    const hb_mixdown_t *mix;
    for (mix = FUNC2(NULL); mix != NULL;
         mix = FUNC2(mix))
    {
        FUNC1(combo, mix->amixdown,
                !FUNC3(mix->amixdown, acodec));
    }
}
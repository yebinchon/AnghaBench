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
typedef  scalar_t__ uint64_t ;
struct AVBPrint {int dummy; } ;
struct TYPE_3__ {int nb_channels; scalar_t__ layout; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct AVBPrint*,char*,...) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_1__* channel_layout_map ; 
 char* FUNC4 (int) ; 

void FUNC5(struct AVBPrint *bp,
                              int nb_channels, uint64_t channel_layout)
{
    int i;

    if (nb_channels <= 0)
        nb_channels = FUNC3(channel_layout);

    for (i = 0; i < FUNC0(channel_layout_map); i++)
        if (nb_channels    == channel_layout_map[i].nb_channels &&
            channel_layout == channel_layout_map[i].layout) {
            FUNC2(bp, "%s", channel_layout_map[i].name);
            return;
        }

    FUNC2(bp, "%d channels", nb_channels);
    if (channel_layout) {
        int i, ch;
        FUNC2(bp, " (");
        for (i = 0, ch = 0; i < 64; i++) {
            if ((channel_layout & (FUNC1(1) << i))) {
                const char *name = FUNC4(i);
                if (name) {
                    if (ch > 0)
                        FUNC2(bp, "+");
                    FUNC2(bp, "%s", name);
                }
                ch++;
            }
        }
        FUNC2(bp, ")");
    }
}
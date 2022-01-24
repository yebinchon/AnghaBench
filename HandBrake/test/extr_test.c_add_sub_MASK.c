#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_5__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_1__ hb_title_t ;
struct TYPE_6__ {int /*<<< orphan*/  source; } ;
typedef  TYPE_2__ hb_subtitle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  mux ; 
 int /*<<< orphan*/  stderr ; 
 int subburn ; 
 int subdefault ; 
 int /*<<< orphan*/  subforce ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(hb_value_array_t *list, hb_title_t *title, int track, int out_track, int *one_burned)
{
    hb_subtitle_t *subtitle;
    // Check that the track exists
    subtitle = FUNC3(title->list_subtitle, track);
    if (subtitle == NULL)
    {
        FUNC0(stderr, "Warning: Could not find subtitle track %d, skipped\n",
                track + 1);
        return -1;
    }

    int burn = !*one_burned && subburn == out_track &&
               FUNC4(subtitle->source);
    *one_burned |= burn;
    int def  = subdefault == out_track;
    int force = FUNC9(subforce, out_track);

    if (!burn &&
        !FUNC5(subtitle->source, mux))
    {
        // Only allow one subtitle to be burned into video
        if (*one_burned)
        {
            FUNC0(stderr, "Warning: Skipping subtitle track %d, can't have more than one track burnt in\n", track + 1);
            return -1;
        }
        *one_burned = 1;
    }
    hb_dict_t *subtitle_dict = FUNC1();
    FUNC2(subtitle_dict, "Track", FUNC8(track));
    FUNC2(subtitle_dict, "Default", FUNC7(def));
    FUNC2(subtitle_dict, "Forced", FUNC7(force));
    FUNC2(subtitle_dict, "Burn", FUNC7(burn));
    FUNC6(list, subtitle_dict);
    return 0;
}
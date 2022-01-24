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
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_3__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(hb_value_array_t *list, hb_title_t *title, int track)
{
    // Check that the track exists
    if (FUNC3(title->list_audio, track-1) == NULL)
    {
        FUNC0(stderr, "Warning: Could not find audio track %d, skipped\n",
                track);
        return -1;
    }
    hb_dict_t *audio_dict = FUNC1();
    FUNC2(audio_dict, "Track", FUNC5(track-1));
    FUNC4(list, audio_dict);

    return 0;
}
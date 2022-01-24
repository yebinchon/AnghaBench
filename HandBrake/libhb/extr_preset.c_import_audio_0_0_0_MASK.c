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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(hb_value_t *preset)
{
    hb_value_t *copy = FUNC0(preset, "AudioCopyMask");
    if (copy != NULL)
        return;

    copy = FUNC3();
    FUNC1(preset, "AudioCopyMask", copy);
    if (FUNC4(FUNC0(preset, "AudioAllowMP3Pass")))
        FUNC2(copy, FUNC5("copy:mp3"));
    if (FUNC4(FUNC0(preset, "AudioAllowAACPass")))
        FUNC2(copy, FUNC5("copy:aac"));
    if (FUNC4(FUNC0(preset, "AudioAllowAC3Pass")))
        FUNC2(copy, FUNC5("copy:ac3"));
    if (FUNC4(FUNC0(preset, "AudioAllowDTSPass")))
        FUNC2(copy, FUNC5("copy:dts"));
    if (FUNC4(FUNC0(preset, "AudioAllowDTSHDPass")))
        FUNC2(copy, FUNC5("copy:dtshd"));
    if (FUNC4(FUNC0(preset, "AudioAllowEAC3Pass")))
        FUNC2(copy, FUNC5("copy:eac3"));
    if (FUNC4(FUNC0(preset, "AudioAllowFLACPass")))
        FUNC2(copy, FUNC5("copy:flac"));
    if (FUNC4(FUNC0(preset, "AudioAllowTRUEHDPass")))
        FUNC2(copy, FUNC5("copy:truehd"));
}
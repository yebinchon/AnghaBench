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

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 scalar_t__ FUNC1 (char*,char const* const) ; 

__attribute__((used)) static int FUNC2(char *codec_id)
{
    static const char *const aac_profiles[] = { "MAIN", "LC", "SSR" };
    int profile;

    for (profile = 0; profile < FUNC0(aac_profiles); profile++)
        if (FUNC1(codec_id, aac_profiles[profile]))
            break;
    return profile + 1;
}
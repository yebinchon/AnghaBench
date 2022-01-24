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
 int AVERROR (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FF_ARRAY_ELEMS (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * color_range_names ; 
 size_t strlen (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strncmp (int /*<<< orphan*/ ,char const*,size_t) ; 

int av_color_range_from_name(const char *name)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(color_range_names); i++) {
        size_t len = strlen(color_range_names[i]);
        if (!strncmp(color_range_names[i], name, len))
            return i;
    }

    return AVERROR(EINVAL);
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

int FUNC3(const hb_value_t *preset, const char *path)
{
    hb_value_t *packaged_preset = FUNC2(preset);
    // Packaging does some validity checks and can fail
    if (packaged_preset == NULL)
        return -1;
    int result = FUNC1(packaged_preset, path);
    FUNC0(&packaged_preset);
    return result;
}
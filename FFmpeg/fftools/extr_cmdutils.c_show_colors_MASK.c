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
typedef  int uint8_t ;

/* Variables and functions */
 char* FUNC0 (int,int const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 

int FUNC2(void *optctx, const char *opt, const char *arg)
{
    const char *name;
    const uint8_t *rgb;
    int i;

    FUNC1("%-32s #RRGGBB\n", "name");

    for (i = 0; (name = FUNC0(i, &rgb)); i++)
        FUNC1("%-32s #%02x%02x%02x\n", name, rgb[0], rgb[1], rgb[2]);

    return 0;
}
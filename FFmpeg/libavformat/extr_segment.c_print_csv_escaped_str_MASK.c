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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 size_t FUNC1 (char const*,char*) ; 

__attribute__((used)) static void FUNC2(AVIOContext *ctx, const char *str)
{
    int needs_quoting = !!str[FUNC1(str, "\",\n\r")];

    if (needs_quoting)
        FUNC0(ctx, '"');

    for (; *str; str++) {
        if (*str == '"')
            FUNC0(ctx, '"');
        FUNC0(ctx, *str);
    }
    if (needs_quoting)
        FUNC0(ctx, '"');
}
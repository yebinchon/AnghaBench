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
typedef  int u_long ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int kYearRangeLen ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static boolean_t
FUNC4(const char *str, const u_long len)
{
    boolean_t result = FALSE;
    const char *token_ptr = NULL;
    char token_buffer[kYearRangeLen];
    u_int token_index = 0;

    token_index = 0;
    for (token_ptr = str; token_ptr < str + len; ++token_ptr) {
        if (FUNC1(*token_ptr) && !token_index) continue;

        /* If we exceed the length of a year range, the test will not succeed,
         * so just fail now.  This limits the length of the token buffer that
         * we have to keep around.
         */
        if (token_index == kYearRangeLen) goto finish;

        token_buffer[token_index++] = *token_ptr;
        if (FUNC0(token_ptr)) {
            if (!token_index) continue;

            token_buffer[token_index] = '\0';

            if (!FUNC2(token_buffer) && 
                !FUNC3(token_buffer)) 
            {
                goto finish;
            }

            token_index = 0;
        }
    }

    result = TRUE;
finish:
    return result;
}
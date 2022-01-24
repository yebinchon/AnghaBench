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
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*,char*) ; 

int FUNC4(char *filename, const char *extensions)
{
    static char ext_list[129];

    char *token;

    char *ext_point;

    FUNC1(ext_list, extensions, 128);
    ext_list[128] = 0;

    token = FUNC3(ext_list, " ,");
    while (token != NULL) {
        // if 'token' matches extension of 'filename'
        // then return a match
        ext_point = FUNC2(filename, '.');

        if (FUNC0(ext_point, token) == 0)
            return (TRUE);

        /* Get next token: */
        token = FUNC3(NULL, " ,");
    }

    // If not match found then return FALSE
    return (FALSE);
}
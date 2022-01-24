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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,...) ; 
 int FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char* FUNC6(char *srt, int *len)
{
    char terminator;
    char color[40];
    uint32_t rgb;

    *len = 0;
    if (srt[0] != '<' && srt[0] != '{')
        return NULL;

    if (srt[0] == '<')
        terminator = '>';
    else
        terminator = '}';

    if (srt[1] == 'i' && srt[2] == terminator)
    {
        *len = 3;
        return FUNC2("{\\i1}");
    }
    else if (srt[1] == 'b' && srt[2] == terminator)
    {
        *len = 3;
        return FUNC2("{\\b1}");
    }
    else if (srt[1] == 'u' && srt[2] == terminator)
    {
        *len = 3;
        return FUNC2("{\\u1}");
    }
    else if (srt[1] == '/' && srt[2] == 'i' && srt[3] == terminator)
    {
        *len = 4;
        return FUNC2("{\\i0}");
    }
    else if (srt[1] == '/' && srt[2] == 'b' && srt[3] == terminator)
    {
        *len = 4;
        return FUNC2("{\\b0}");
    }
    else if (srt[1] == '/' && srt[2] == 'u' && srt[3] == terminator)
    {
        *len = 4;
        return FUNC2("{\\u0}");
    }
    else if (srt[0] == '<' && !FUNC4(srt + 1, "font", 4))
    {
        int match;
        match = FUNC3(srt + 1, "font color=\"%39[^\"]\">", color);
        if (match != 1)
        {
            return NULL;
        }
        while (srt[*len] != '>') (*len)++;
        (*len)++;
        if (color[0] == '#')
            rgb = FUNC5(color + 1, NULL, 16);
        else
            rgb = FUNC1(color);
        return FUNC2("{\\1c&H%X&}", FUNC0(rgb));
    }
    else if (srt[0] == '<' && srt[1] == '/' && !FUNC4(srt + 2, "font", 4) &&
             srt[6] == '>')
    {
        *len = 7;
        return FUNC2("{\\1c&HFFFFFF&}");
    }

    return NULL;
}
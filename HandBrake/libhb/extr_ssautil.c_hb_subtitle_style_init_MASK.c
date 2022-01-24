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
typedef  int /*<<< orphan*/  ssa_style_indicies_t ;
typedef  int /*<<< orphan*/  hb_subtitle_style_context_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char** FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*,char*) ; 

hb_subtitle_style_context_t * FUNC10(const char * ssa_header)
{
    hb_subtitle_style_context_t * ctx;

    ctx = FUNC1(1, sizeof(*ctx));
    if (ctx == NULL)
    {
        return NULL;
    }
    if (ssa_header != NULL)
    {
        // Find beginning of styles
        char *  pos = FUNC9(ssa_header, "[V4");

        if (pos != NULL)
        {
            pos = FUNC9(pos, "\nFormat:");
            if (pos != NULL)
            {
                char ** fields;
                int     next = 7;
                char  * line = FUNC6(pos + 8);

                fields = FUNC4(line, 0);
                FUNC3(line);

                if (fields != NULL)
                {
                    ssa_style_indicies_t field_indices;

                    FUNC2(fields, &field_indices);

                    pos    = FUNC9(pos, "\nStyle:");
                    while (pos != NULL)
                    {
                        char ** style;

                        line = FUNC6(pos + next);
                        style = FUNC4(line, 0);
                        FUNC3(line);

                        if (FUNC0(ctx, style, &field_indices))
                        {
                            FUNC5(style);
                            break;
                        }
                        pos = FUNC8(pos + next, '\n');
                        next = 1;

                        FUNC5(style);
                    }

                    FUNC5(fields);
                }
            }
        }
    }
    FUNC7(ctx);
    return ctx;
}
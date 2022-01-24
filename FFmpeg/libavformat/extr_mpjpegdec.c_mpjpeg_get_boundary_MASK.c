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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char* FUNC7(AVIOContext* pb)
{
    uint8_t *mime_type = NULL;
    const char *start;
    const char *end;
    uint8_t *res = NULL;
    int     len;

    /* get MIME type, and skip to the first parameter */
    FUNC2(pb, "mime_type", AV_OPT_SEARCH_CHILDREN, &mime_type);
    start = mime_type;
    while (start != NULL && *start != '\0') {
        start = FUNC5(start, ';');
        if (!start)
            break;

        start = start+1;

        while (FUNC1(*start))
            start++;

        if (FUNC3(start, "boundary=", &start)) {
            end = FUNC5(start, ';');
            if (end)
                len = end - start - 1;
            else
                len = FUNC6(start);

            /* some endpoints may enclose the boundary
              in Content-Type in quotes */
            if ( len>2 && *start == '"' && start[len-1] == '"' ) {
                start++;
                len -= 2;
            }
            res = FUNC4(start, len);
            break;
        }
    }

    FUNC0(&mime_type);
    return res;
}
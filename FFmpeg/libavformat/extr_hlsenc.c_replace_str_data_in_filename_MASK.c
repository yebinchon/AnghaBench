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
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC5(char **s, const char *filename, char placeholder, const char *datastring)
{
    const char *p;
    char *new_filename;
    char c;
    int addchar_count;
    int found_count = 0;
    AVBPrint buf;

    FUNC2(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    p = filename;
    for (;;) {
        c = *p;
        if (c == '\0')
            break;
        if (c == '%' && *(p+1) == '%')  // %%
            addchar_count = 2;
        else if (c == '%' && *(p+1) == placeholder) {
            FUNC4(&buf, "%s", datastring);
            p += 2;
            addchar_count = 0;
            found_count ++;
        } else
            addchar_count = 1;

        if (addchar_count > 0) {
            FUNC0(&buf, p, addchar_count);
            p += addchar_count;
        }
    }
    if (!FUNC3(&buf)) {
        FUNC1(&buf, NULL);
        return -1;
    }
    if (FUNC1(&buf, &new_filename) < 0 || !new_filename)
        return -1;
    *s = new_filename;
    return found_count;
}
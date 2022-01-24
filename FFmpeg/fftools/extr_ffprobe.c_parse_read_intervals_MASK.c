#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,TYPE_1__*) ; 
 TYPE_1__* read_intervals ; 
 int read_intervals_nb ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static int FUNC9(const char *intervals_spec)
{
    int ret, n, i;
    char *p, *spec = FUNC5(intervals_spec);
    if (!spec)
        return FUNC0(ENOMEM);

    /* preparse specification, get number of intervals */
    for (n = 0, p = spec; *p; p++)
        if (*p == ',')
            n++;
    n++;

    read_intervals = FUNC4(n, sizeof(*read_intervals));
    if (!read_intervals) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    read_intervals_nb = n;

    /* parse intervals */
    p = spec;
    for (i = 0; p; i++) {
        char *next;

        FUNC1(i < read_intervals_nb);
        next = FUNC8(p, ',');
        if (next)
            *next++ = 0;

        read_intervals[i].id = i;
        ret = FUNC7(p, &read_intervals[i]);
        if (ret < 0) {
            FUNC3(NULL, AV_LOG_ERROR, "Error parsing read interval #%d '%s'\n",
                   i, p);
            goto end;
        }
        FUNC3(NULL, AV_LOG_VERBOSE, "Parsed log interval ");
        FUNC6(&read_intervals[i], NULL, AV_LOG_VERBOSE);
        p = next;
    }
    FUNC1(i == read_intervals_nb);

end:
    FUNC2(spec);
    return ret;
}
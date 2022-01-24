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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,struct tm*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, AVBPrint *bp,
                         char *fct, unsigned argc, char **argv, int tag)
{
    const char *fmt = argc ? argv[0] : "%Y-%m-%d %H:%M:%S";
    time_t now;
    struct tm tm;

    FUNC3(&now);
    if (tag == 'L')
        FUNC2(&now, &tm);
    else
        tm = *FUNC1(&now, &tm);
    FUNC0(bp, fmt, &tm);
    return 0;
}
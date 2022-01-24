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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  report_file ; 

__attribute__((used)) static void FUNC3(const char *a)
{
    const unsigned char *p;

    for (p = a; *p; p++)
        if (!((*p >= '+' && *p <= ':') || (*p >= '@' && *p <= 'Z') ||
              *p == '_' || (*p >= 'a' && *p <= 'z')))
            break;
    if (!*p) {
        FUNC2(a, report_file);
        return;
    }
    FUNC1('"', report_file);
    for (p = a; *p; p++) {
        if (*p == '\\' || *p == '"' || *p == '$' || *p == '`')
            FUNC0(report_file, "\\%c", *p);
        else if (*p < ' ' || *p > '~')
            FUNC0(report_file, "\\x%02hhx", *p);
        else
            FUNC1(*p, report_file);
    }
    FUNC1('"', report_file);
}
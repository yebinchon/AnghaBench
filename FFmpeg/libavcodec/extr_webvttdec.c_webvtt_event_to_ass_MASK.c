#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* from; int /*<<< orphan*/  to; } ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,size_t const) ; 
 TYPE_1__* webvtt_tag_replace ; 

__attribute__((used)) static int FUNC5(AVBPrint *buf, const char *p)
{
    int i, again = 0, skip = 0;

    while (*p) {

        for (i = 0; i < FUNC0(webvtt_tag_replace); i++) {
            const char *from = webvtt_tag_replace[i].from;
            const size_t len = FUNC3(from);
            if (!FUNC4(p, from, len)) {
                FUNC2(buf, "%s", webvtt_tag_replace[i].to);
                p += len;
                again = 1;
                break;
            }
        }
        if (!*p)
            break;

        if (again) {
            again = 0;
            skip = 0;
            continue;
        }
        if (*p == '<')
            skip = 1;
        else if (*p == '>')
            skip = 0;
        else if (p[0] == '\n' && p[1])
            FUNC2(buf, "\\N");
        else if (!skip && *p != '\r')
            FUNC1(buf, *p, 1);
        p++;
    }
    return 0;
}
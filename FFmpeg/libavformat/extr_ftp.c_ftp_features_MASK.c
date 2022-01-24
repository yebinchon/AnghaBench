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
struct TYPE_5__ {int utf8; int /*<<< orphan*/  features; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,char const*,int const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(FTPContext *s)
{
    static const char *feat_command        = "FEAT\r\n";
    static const char *enable_utf8_command = "OPTS UTF8 ON\r\n";
    static const int feat_codes[] = {211, 0};
    static const int opts_codes[] = {200, 202, 451, 0};

    FUNC0(&s->features);
    if (FUNC2(s, feat_command, feat_codes, &s->features) != 211) {
        FUNC0(&s->features);
    }

    if (FUNC1(s, "UTF8")) {
        int ret = FUNC2(s, enable_utf8_command, opts_codes, NULL);
        if (ret == 200 || ret == 202)
            s->utf8 = 1;
    }

    return 0;
}
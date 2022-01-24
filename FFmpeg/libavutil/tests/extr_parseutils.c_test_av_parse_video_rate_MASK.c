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
struct TYPE_3__ {int num; int den; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AVRational ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 int FUNC1 (TYPE_1__*,char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const,int,int,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;
    static const char *const rates[] = {
        "-inf",
        "inf",
        "nan",
        "123/0",
        "-123 / 0",
        "",
        "/",
        " 123  /  321",
        "foo/foo",
        "foo/1",
        "1/foo",
        "0/0",
        "/0",
        "1/",
        "1",
        "0",
        "-123/123",
        "-foo",
        "123.23",
        ".23",
        "-.23",
        "-0.234",
        "-0.0000001",
        "  21332.2324   ",
        " -21332.2324   ",
    };

    for (i = 0; i < FUNC0(rates); i++) {
        int ret;
        AVRational q = { 0, 0 };
        ret = FUNC1(&q, rates[i]);
        FUNC2("'%s' -> %d/%d %s\n",
               rates[i], q.num, q.den, ret ? "ERROR" : "OK");
    }
}
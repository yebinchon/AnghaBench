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
struct TYPE_5__ {char const* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const) ; 
 char* FUNC2 (char const*,char const) ; 

__attribute__((used)) static const char *FUNC3(AVBPrint *dst, const char *src, void *log_ctx)
{
    static const char json_escape[] = {'"', '\\', '\b', '\f', '\n', '\r', '\t', 0};
    static const char json_subst[]  = {'"', '\\',  'b',  'f',  'n',  'r',  't', 0};
    const char *p;

    for (p = src; *p; p++) {
        char *s = FUNC2(json_escape, *p);
        if (s) {
            FUNC0(dst, '\\', 1);
            FUNC0(dst, json_subst[s - json_escape], 1);
        } else if ((unsigned char)*p < 32) {
            FUNC1(dst, "\\u00%02x", *p & 0xff);
        } else {
            FUNC0(dst, *p, 1);
        }
    }
    return dst->str;
}
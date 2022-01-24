#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const,int) ; 
 size_t FUNC1 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC2(AVBPrint *dst, const char *src, const char sep, void *log_ctx)
{
    char meta_chars[] = { sep, '"', '\n', '\r', '\0' };
    int needs_quoting = !!src[FUNC1(src, meta_chars)];

    if (needs_quoting)
        FUNC0(dst, '"', 1);

    for (; *src; src++) {
        if (*src == '"')
            FUNC0(dst, '"', 1);
        FUNC0(dst, *src, 1);
    }
    if (needs_quoting)
        FUNC0(dst, '"', 1);
    return dst->str;
}
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
struct sbg_parser {char* cursor; char* end; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 double FUNC1 (char*,char**) ; 

__attribute__((used)) static int FUNC2(struct sbg_parser *p, double *r)
{
    double d;
    char *end;

    if (p->cursor == p->end || FUNC0(*p->cursor) || *p->cursor == '\n')
        return 0;
    d = FUNC1(p->cursor, &end);
    if (end > p->cursor) {
        *r = d;
        p->cursor = end;
        return 1;
    }
    return 0;
}
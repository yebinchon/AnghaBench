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
struct TYPE_4__ {char* s; } ;
typedef  TYPE_1__ Parser ;
typedef  int /*<<< orphan*/  AVExpr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_div ; 
 int /*<<< orphan*/  e_mul ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(AVExpr **e, Parser *p)
{
    int ret;
    AVExpr *e0, *e1, *e2;
    if ((ret = FUNC3(&e0, p)) < 0)
        return ret;
    while (p->s[0]=='*' || p->s[0]=='/') {
        int c= *p->s++;
        e1 = e0;
        if ((ret = FUNC3(&e2, p)) < 0) {
            FUNC1(e1);
            return ret;
        }
        e0 = FUNC2(c == '*' ? e_mul : e_div, 1, e1, e2);
        if (!e0) {
            FUNC1(e1);
            FUNC1(e2);
            return FUNC0(ENOMEM);
        }
    }
    *e = e0;
    return 0;
}
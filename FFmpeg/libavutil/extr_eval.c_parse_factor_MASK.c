#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int value; TYPE_1__** param; } ;
struct TYPE_13__ {char* s; } ;
struct TYPE_12__ {int value; } ;
typedef  TYPE_2__ Parser ;
typedef  TYPE_3__ AVExpr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  e_pow ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int,TYPE_3__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_3__**,TYPE_2__*,int*) ; 

__attribute__((used)) static int FUNC4(AVExpr **e, Parser *p)
{
    int sign, sign2, ret;
    AVExpr *e0, *e1, *e2;
    if ((ret = FUNC3(&e0, p, &sign)) < 0)
        return ret;
    while(p->s[0]=='^'){
        e1 = e0;
        p->s++;
        if ((ret = FUNC3(&e2, p, &sign2)) < 0) {
            FUNC1(e1);
            return ret;
        }
        e0 = FUNC2(e_pow, 1, e1, e2);
        if (!e0) {
            FUNC1(e1);
            FUNC1(e2);
            return FUNC0(ENOMEM);
        }
        if (e0->param[1]) e0->param[1]->value *= (sign2|1);
    }
    if (e0) e0->value *= (sign|1);

    *e = e0;
    return 0;
}
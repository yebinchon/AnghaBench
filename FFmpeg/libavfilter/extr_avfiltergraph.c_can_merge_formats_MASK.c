#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_13__ {struct TYPE_13__* formats; struct TYPE_13__* refs; } ;
typedef  TYPE_1__ AVFilterFormats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(AVFilterFormats *a_arg,
                             AVFilterFormats *b_arg,
                             enum AVMediaType type,
                             int is_sample_rate)
{
    AVFilterFormats *a, *b, *ret;
    if (a_arg == b_arg)
        return 1;
    a = FUNC1(a_arg);
    b = FUNC1(b_arg);

    if (!a || !b) {
        if (a)
            FUNC0(&a->formats);
        if (b)
            FUNC0(&b->formats);

        FUNC0(&a);
        FUNC0(&b);

        return 0;
    }

    if (is_sample_rate) {
        ret = FUNC3(a, b);
    } else {
        ret = FUNC2(a, b, type);
    }
    if (ret) {
        FUNC0(&ret->formats);
        FUNC0(&ret->refs);
        FUNC0(&ret);
        return 1;
    } else {
        if (a)
            FUNC0(&a->formats);
        if (b)
            FUNC0(&b->formats);
        FUNC0(&a);
        FUNC0(&b);
        return 0;
    }
}
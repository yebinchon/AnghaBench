#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  length; struct TYPE_9__* coeff; } ;
typedef  TYPE_1__ SwsVector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__*) ; 

void FUNC3(SwsVector *a, SwsVector *b)
{
    SwsVector *conv = FUNC2(a, b);
    if (!conv) {
        FUNC1(a);
        return;
    }
    FUNC0(a->coeff);
    a->coeff  = conv->coeff;
    a->length = conv->length;
    FUNC0(conv);
}
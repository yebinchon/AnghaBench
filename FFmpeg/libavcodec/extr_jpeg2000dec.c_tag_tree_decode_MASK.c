#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_6__ {int val; int /*<<< orphan*/  vis; struct TYPE_6__* parent; } ;
typedef  TYPE_1__ Jpeg2000TgtNode ;
typedef  TYPE_2__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC2(Jpeg2000DecoderContext *s, Jpeg2000TgtNode *node,
                           int threshold)
{
    Jpeg2000TgtNode *stack[30];
    int sp = -1, curval = 0;

    if (!node) {
        FUNC0(s->avctx, AV_LOG_ERROR, "missing node\n");
        return AVERROR_INVALIDDATA;
    }

    while (node && !node->vis) {
        stack[++sp] = node;
        node        = node->parent;
    }

    if (node)
        curval = node->val;
    else
        curval = stack[sp]->val;

    while (curval < threshold && sp >= 0) {
        if (curval < stack[sp]->val)
            curval = stack[sp]->val;
        while (curval < threshold) {
            int ret;
            if ((ret = FUNC1(s, 1)) > 0) {
                stack[sp]->vis++;
                break;
            } else if (!ret)
                curval++;
            else
                return ret;
        }
        stack[sp]->val = curval;
        sp--;
    }
    return curval;
}
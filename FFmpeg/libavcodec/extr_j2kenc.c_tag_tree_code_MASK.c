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
struct TYPE_3__ {int val; struct TYPE_3__* parent; scalar_t__ vis; } ;
typedef  TYPE_1__ Jpeg2000TgtNode ;
typedef  int /*<<< orphan*/  Jpeg2000EncoderContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(Jpeg2000EncoderContext *s, Jpeg2000TgtNode *node, int threshold)
{
    Jpeg2000TgtNode *stack[30];
    int sp = 1, curval = 0;
    stack[0] = node;

    node = node->parent;
    while(node){
        if (node->vis){
            curval = node->val;
            break;
        }
        node->vis++;
        stack[sp++] = node;
        node = node->parent;
    }
    while(--sp >= 0){
        if (stack[sp]->val >= threshold){
            FUNC0(s, 0, threshold - curval);
            break;
        }
        FUNC0(s, 0, stack[sp]->val - curval);
        FUNC0(s, 1, 1);
        curval = stack[sp]->val;
    }
}
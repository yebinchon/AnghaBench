#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* options; struct TYPE_6__* next; struct TYPE_6__* key; scalar_t__ val; struct TYPE_6__* front; struct TYPE_6__* type; } ;
typedef  TYPE_1__ section ;
typedef  TYPE_1__ node ;
typedef  TYPE_1__ kvp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(section *s)
{
    FUNC0(s->type);
    node *n = s->options->front;
    while(n){
        kvp *pair = (kvp *)n->val;
        FUNC0(pair->key);
        FUNC0(pair);
        node *next = n->next;
        FUNC0(n);
        n = next;
    }
    FUNC0(s->options);
    FUNC0(s);
}
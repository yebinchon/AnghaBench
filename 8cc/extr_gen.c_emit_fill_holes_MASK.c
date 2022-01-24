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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {int initoff; TYPE_1__* totype; } ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  cmpinit ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_2__** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(Vector *inits, int off, int totalsize) {
    // If at least one of the fields in a variable are initialized,
    // unspecified fields has to be initialized with 0.
    int len = FUNC4(inits);
    Node **buf = FUNC1(len * sizeof(Node *));
    for (int i = 0; i < len; i++)
        buf[i] = FUNC3(inits, i);
    FUNC2(buf, len, sizeof(Node *), cmpinit);

    int lastend = 0;
    for (int i = 0; i < len; i++) {
        Node *node = buf[i];
        if (lastend < node->initoff)
            FUNC0(lastend + off, node->initoff + off);
        lastend = node->initoff + node->totype->size;
    }
    FUNC0(lastend + off, totalsize + off);
}
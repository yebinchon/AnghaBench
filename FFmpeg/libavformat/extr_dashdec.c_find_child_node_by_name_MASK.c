#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static xmlNodePtr FUNC3(xmlNodePtr rootnode, const char *nodename)
{
    xmlNodePtr node = rootnode;
    if (!node) {
        return NULL;
    }

    node = FUNC1(node);
    while (node) {
        if (!FUNC0(node->name, nodename)) {
            return node;
        }
        node = FUNC2(node);
    }
    return NULL;
}
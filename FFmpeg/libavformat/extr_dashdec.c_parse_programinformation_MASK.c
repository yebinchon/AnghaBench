#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_11__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, xmlNodePtr node)
{
    xmlChar *val = NULL;

    node = FUNC2(node);
    while (node) {
        if (!FUNC1(node->name, "Title")) {
            val = FUNC5(node);
            if (val) {
                FUNC0(&s->metadata, "Title", val, 0);
            }
        } else if (!FUNC1(node->name, "Source")) {
            val = FUNC5(node);
            if (val) {
                FUNC0(&s->metadata, "Source", val, 0);
            }
        } else if (!FUNC1(node->name, "Copyright")) {
            val = FUNC5(node);
            if (val) {
                FUNC0(&s->metadata, "Copyright", val, 0);
            }
        }
        node = FUNC4(node);
        FUNC3(val);
        val = NULL;
    }
    return 0;
}
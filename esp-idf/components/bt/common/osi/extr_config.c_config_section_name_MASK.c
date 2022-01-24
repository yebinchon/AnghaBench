#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* name; } ;
typedef  TYPE_1__ section_t ;
typedef  int /*<<< orphan*/  list_node_t ;
typedef  int /*<<< orphan*/  config_section_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

const char *FUNC2(const config_section_node_t *node)
{
    FUNC0(node != NULL);
    const list_node_t *lnode = (const list_node_t *)node;
    const section_t *section = (const section_t *)FUNC1(lnode);
    return section->name;
}
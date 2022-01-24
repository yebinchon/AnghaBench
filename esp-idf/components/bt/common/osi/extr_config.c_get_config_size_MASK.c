#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ section_t ;
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_6__ {char* key; char* value; } ;
typedef  TYPE_2__ entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  sections; } ;
typedef  TYPE_3__ config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const config_t *config)
{
    FUNC0(config != NULL);

    int w_len = 0, total_size = 0;

    for (const list_node_t *node = FUNC1(config->sections); node != FUNC2(config->sections); node = FUNC3(node)) {
        const section_t *section = (const section_t *)FUNC4(node);
        w_len = FUNC5(section->name) + FUNC5("[]\n");// format "[section->name]\n"
        total_size += w_len;

        for (const list_node_t *enode = FUNC1(section->entries); enode != FUNC2(section->entries); enode = FUNC3(enode)) {
            const entry_t *entry = (const entry_t *)FUNC4(enode);
            w_len = FUNC5(entry->key) + FUNC5(entry->value) + FUNC5(" = \n");// format "entry->key = entry->value\n"
            total_size += w_len;
        }

        // Only add a separating newline if there are more sections.
        if (FUNC3(node) != FUNC2(config->sections)) {
                total_size ++;  //'\n'
        } else {
            break;
        }
    }
    total_size ++; //'\0'
    return total_size;
}
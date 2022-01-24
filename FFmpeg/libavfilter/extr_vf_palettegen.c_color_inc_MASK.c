#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct hist_node {int nb_entries; struct color_ref* entries; } ;
struct color_ref {scalar_t__ color; int count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct color_ref* FUNC1 (void**,int*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct hist_node *hist, uint32_t color)
{
    int i;
    const unsigned hash = FUNC2(color);
    struct hist_node *node = &hist[hash];
    struct color_ref *e;

    for (i = 0; i < node->nb_entries; i++) {
        e = &node->entries[i];
        if (e->color == color) {
            e->count++;
            return 0;
        }
    }

    e = FUNC1((void**)&node->entries, &node->nb_entries,
                         sizeof(*node->entries), NULL);
    if (!e)
        return FUNC0(ENOMEM);
    e->color = color;
    e->count = 1;
    return 1;
}
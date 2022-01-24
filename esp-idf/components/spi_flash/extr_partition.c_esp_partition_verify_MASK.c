#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* label; scalar_t__ flash_chip; scalar_t__ address; scalar_t__ size; scalar_t__ encrypted; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/ * esp_partition_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 

const esp_partition_t *FUNC6(const esp_partition_t *partition)
{
    FUNC0(partition != NULL);
    const char *label = (FUNC5(partition->label) > 0) ? partition->label : NULL;
    esp_partition_iterator_t it = FUNC1(partition->type,
                                                     partition->subtype,
                                                     label);
    while (it != NULL) {
        const esp_partition_t *p = FUNC2(it);
        /* Can't memcmp() whole structure here as padding contents may be different */
        if (p->flash_chip == partition->flash_chip
            && p->address == partition->address
            && partition->size == p->size
            && partition->encrypted == p->encrypted) {
            FUNC3(it);
            return p;
        }
        it = FUNC4(it);
    }
    FUNC3(it);
    return NULL;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/ * AVFilterPad ;
typedef  int /*<<< orphan*/  AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

int FUNC5(unsigned idx, unsigned *count, size_t padidx_off,
                   AVFilterPad **pads, AVFilterLink ***links,
                   AVFilterPad *newpad)
{
    AVFilterLink **newlinks;
    AVFilterPad *newpads;
    unsigned i;

    idx = FUNC1(idx, *count);

    newpads  = FUNC2(*pads,  *count + 1, sizeof(AVFilterPad));
    newlinks = FUNC2(*links, *count + 1, sizeof(AVFilterLink*));
    if (newpads)
        *pads  = newpads;
    if (newlinks)
        *links = newlinks;
    if (!newpads || !newlinks)
        return FUNC0(ENOMEM);

    FUNC4(*pads  + idx + 1, *pads  + idx, sizeof(AVFilterPad)   * (*count - idx));
    FUNC4(*links + idx + 1, *links + idx, sizeof(AVFilterLink*) * (*count - idx));
    FUNC3(*pads + idx, newpad, sizeof(AVFilterPad));
    (*links)[idx] = NULL;

    (*count)++;
    for (i = idx + 1; i < *count; i++)
        if ((*links)[i])
            (*(unsigned *)((uint8_t *) (*links)[i] + padidx_off))++;

    return 0;
}
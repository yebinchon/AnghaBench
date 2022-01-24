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
struct TYPE_3__ {int num_vectors; } ;
typedef  TYPE_1__ COOKContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dither_tab ; 

__attribute__((used)) static inline void FUNC1(COOKContext *q, int *category,
                                   int *category_index)
{
    int i;
    for (i = 0; i < q->num_vectors; i++)
    {
        int idx = category_index[i];
        if (++category[idx] >= FUNC0(dither_tab))
            --category[idx];
    }
}
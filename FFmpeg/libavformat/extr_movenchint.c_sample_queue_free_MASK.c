#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* data; scalar_t__ own_data; } ;
struct TYPE_4__ {int len; scalar_t__ size; TYPE_3__* samples; } ;
typedef  TYPE_1__ HintSampleQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**) ; 

__attribute__((used)) static void FUNC1(HintSampleQueue *queue)
{
    int i;
    for (i = 0; i < queue->len; i++)
        if (queue->samples[i].own_data)
            FUNC0(&queue->samples[i].data);
    FUNC0(&queue->samples);
    queue->len  = 0;
    queue->size = 0;
}
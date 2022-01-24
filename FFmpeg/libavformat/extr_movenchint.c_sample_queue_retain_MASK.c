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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int own_data; int /*<<< orphan*/ * data; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int len; TYPE_2__* samples; } ;
typedef  TYPE_1__ HintSampleQueue ;
typedef  TYPE_2__ HintSample ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(HintSampleQueue *queue)
{
    int i;
    for (i = 0; i < queue->len; ) {
        HintSample *sample = &queue->samples[i];
        if (!sample->own_data) {
            uint8_t *ptr = FUNC0(sample->size);
            if (!ptr) {
                /* Unable to allocate memory for this one, remove it */
                FUNC2(queue->samples + i, queue->samples + i + 1,
                        sizeof(HintSample)*(queue->len - i - 1));
                queue->len--;
                continue;
            }
            FUNC1(ptr, sample->data, sample->size);
            sample->data = ptr;
            sample->own_data = 1;
        }
        i++;
    }
}
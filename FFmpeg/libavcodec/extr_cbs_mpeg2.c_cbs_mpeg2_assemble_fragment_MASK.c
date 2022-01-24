#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int* data; } ;
struct TYPE_6__ {int nb_units; int* data; size_t data_size; TYPE_1__* units; TYPE_4__* data_ref; } ;
struct TYPE_5__ {scalar_t__ data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(CodedBitstreamContext *ctx,
                                       CodedBitstreamFragment *frag)
{
    uint8_t *data;
    size_t size, dp;
    int i;

    size = 0;
    for (i = 0; i < frag->nb_units; i++)
        size += 3 + frag->units[i].data_size;

    frag->data_ref = FUNC2(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!frag->data_ref)
        return FUNC0(ENOMEM);
    data = frag->data_ref->data;

    dp = 0;
    for (i = 0; i < frag->nb_units; i++) {
        CodedBitstreamUnit *unit = &frag->units[i];

        data[dp++] = 0;
        data[dp++] = 0;
        data[dp++] = 1;

        FUNC3(data + dp, unit->data, unit->data_size);
        dp += unit->data_size;
    }

    FUNC1(dp == size);

    FUNC4(data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    frag->data      = data;
    frag->data_size = size;

    return 0;
}
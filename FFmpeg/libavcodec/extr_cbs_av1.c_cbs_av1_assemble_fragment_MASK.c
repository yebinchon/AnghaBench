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
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {int nb_units; size_t data_size; TYPE_1__* units; scalar_t__ data; TYPE_4__* data_ref; } ;
struct TYPE_5__ {scalar_t__ data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(CodedBitstreamContext *ctx,
                                     CodedBitstreamFragment *frag)
{
    size_t size, pos;
    int i;

    size = 0;
    for (i = 0; i < frag->nb_units; i++)
        size += frag->units[i].data_size;

    frag->data_ref = FUNC2(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!frag->data_ref)
        return FUNC0(ENOMEM);
    frag->data = frag->data_ref->data;
    FUNC4(frag->data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    pos = 0;
    for (i = 0; i < frag->nb_units; i++) {
        FUNC3(frag->data + pos, frag->units[i].data,
               frag->units[i].data_size);
        pos += frag->units[i].data_size;
    }
    FUNC1(pos == size);
    frag->data_size = size;

    return 0;
}
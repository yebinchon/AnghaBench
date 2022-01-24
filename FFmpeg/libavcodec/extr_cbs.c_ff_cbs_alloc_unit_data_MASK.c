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
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {size_t data_size; scalar_t__ data; TYPE_3__* data_ref; } ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(CodedBitstreamContext *ctx,
                           CodedBitstreamUnit *unit,
                           size_t size)
{
    FUNC1(!unit->data && !unit->data_ref);

    unit->data_ref = FUNC2(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!unit->data_ref)
        return FUNC0(ENOMEM);

    unit->data      = unit->data_ref->data;
    unit->data_size = size;

    FUNC3(unit->data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    return 0;
}
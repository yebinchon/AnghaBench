#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_5__ {size_t data_size; int /*<<< orphan*/ * data_ref; int /*<<< orphan*/ * data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  CodedBitstreamUnitType ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

int FUNC6(CodedBitstreamContext *ctx,
                            CodedBitstreamFragment *frag,
                            int position,
                            CodedBitstreamUnitType type,
                            uint8_t *data, size_t data_size,
                            AVBufferRef *data_buf)
{
    CodedBitstreamUnit *unit;
    AVBufferRef *data_ref;
    int err;

    if (position == -1)
        position = frag->nb_units;
    FUNC1(position >= 0 && position <= frag->nb_units);

    if (data_buf)
        data_ref = FUNC3(data_buf);
    else
        data_ref = FUNC2(data, data_size, NULL, NULL, 0);
    if (!data_ref)
        return FUNC0(ENOMEM);

    err = FUNC5(ctx, frag, position);
    if (err < 0) {
        FUNC4(&data_ref);
        return err;
    }

    unit = &frag->units[position];
    unit->type      = type;
    unit->data      = data;
    unit->data_size = data_size;
    unit->data_ref  = data_ref;

    return 0;
}
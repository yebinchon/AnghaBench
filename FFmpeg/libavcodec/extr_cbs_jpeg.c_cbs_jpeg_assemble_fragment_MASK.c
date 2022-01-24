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
struct TYPE_5__ {int data_size; int type; int* data; } ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 size_t FUNC1 (int*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int JPEG_MARKER_EOI ; 
 int JPEG_MARKER_SOI ; 
 int JPEG_MARKER_SOS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_4__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(CodedBitstreamContext *ctx,
                                       CodedBitstreamFragment *frag)
{
    const CodedBitstreamUnit *unit;
    uint8_t *data;
    size_t size, dp, sp;
    int i;

    size = 4; // SOI + EOI.
    for (i = 0; i < frag->nb_units; i++) {
        unit = &frag->units[i];
        size += 2 + unit->data_size;
        if (unit->type == JPEG_MARKER_SOS) {
            for (sp = 0; sp < unit->data_size; sp++) {
                if (unit->data[sp] == 0xff)
                    ++size;
            }
        }
    }

    frag->data_ref = FUNC3(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!frag->data_ref)
        return FUNC0(ENOMEM);
    data = frag->data_ref->data;

    dp = 0;

    data[dp++] = 0xff;
    data[dp++] = JPEG_MARKER_SOI;

    for (i = 0; i < frag->nb_units; i++) {
        unit = &frag->units[i];

        data[dp++] = 0xff;
        data[dp++] = unit->type;

        if (unit->type != JPEG_MARKER_SOS) {
            FUNC4(data + dp, unit->data, unit->data_size);
            dp += unit->data_size;
        } else {
            sp = FUNC1(unit->data);
            FUNC2(sp <= unit->data_size);
            FUNC4(data + dp, unit->data, sp);
            dp += sp;

            for (; sp < unit->data_size; sp++) {
                if (unit->data[sp] == 0xff) {
                    data[dp++] = 0xff;
                    data[dp++] = 0x00;
                } else {
                    data[dp++] = unit->data[sp];
                }
            }
        }
    }

    data[dp++] = 0xff;
    data[dp++] = JPEG_MARKER_EOI;

    FUNC2(dp == size);

    FUNC5(data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    frag->data      = data;
    frag->data_size = size;

    return 0;
}
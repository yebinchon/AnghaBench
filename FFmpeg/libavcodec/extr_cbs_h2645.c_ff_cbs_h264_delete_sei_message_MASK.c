#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nb_units; TYPE_2__* units; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* content; } ;
struct TYPE_7__ {int payload_count; int /*<<< orphan*/ * payload; } ;
typedef  TYPE_1__ H264RawSEI ;
typedef  TYPE_2__ CodedBitstreamUnit ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 scalar_t__ H264_NAL_SEI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4(CodedBitstreamContext *ctx,
                                    CodedBitstreamFragment *au,
                                    CodedBitstreamUnit *nal,
                                    int position)
{
    H264RawSEI *sei = nal->content;

    FUNC0(nal->type == H264_NAL_SEI);
    FUNC0(position >= 0 && position < sei->payload_count);

    if (position == 0 && sei->payload_count == 1) {
        // Deleting NAL unit entirely.
        int i;

        for (i = 0; i < au->nb_units; i++) {
            if (&au->units[i] == nal)
                break;
        }

        FUNC2(ctx, au, i);
    } else {
        FUNC1(&sei->payload[position]);

        --sei->payload_count;
        FUNC3(sei->payload + position,
                sei->payload + position + 1,
                (sei->payload_count - position) * sizeof(*sei->payload));
    }
}
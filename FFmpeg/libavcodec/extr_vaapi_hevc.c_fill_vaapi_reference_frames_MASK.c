#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__ const* ReferenceFrames; } ;
typedef  TYPE_1__ VAPictureParameterBufferHEVC ;
struct TYPE_14__ {TYPE_2__ const* DPB; TYPE_2__ const* ref; } ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_2__ const HEVCFrame ;
typedef  TYPE_3__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*) ; 
 int HEVC_FRAME_FLAG_LONG_REF ; 
 int HEVC_FRAME_FLAG_SHORT_REF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,TYPE_2__ const*,int) ; 
 int FUNC2 (TYPE_3__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 

__attribute__((used)) static void FUNC4(const HEVCContext *h, VAPictureParameterBufferHEVC *pp)
{
    const HEVCFrame *current_picture = h->ref;
    int i, j, rps_type;

    for (i = 0, j = 0; i < FUNC0(pp->ReferenceFrames); i++) {
        const HEVCFrame *frame = NULL;

        while (!frame && j < FUNC0(h->DPB)) {
            if (&h->DPB[j] != current_picture && (h->DPB[j].flags & (HEVC_FRAME_FLAG_LONG_REF | HEVC_FRAME_FLAG_SHORT_REF)))
                frame = &h->DPB[j];
            j++;
        }

        FUNC3(&pp->ReferenceFrames[i]);

        if (frame) {
            rps_type = FUNC2(h, frame);
            FUNC1(&pp->ReferenceFrames[i], frame, rps_type);
        }
    }
}
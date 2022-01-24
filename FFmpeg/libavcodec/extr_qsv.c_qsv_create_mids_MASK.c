#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {TYPE_4__* hwctx; } ;
struct TYPE_19__ {int nb_surfaces; TYPE_2__* surfaces; } ;
struct TYPE_18__ {TYPE_6__* hw_frames_ref; int /*<<< orphan*/  handle; } ;
struct TYPE_16__ {int /*<<< orphan*/  MemId; } ;
struct TYPE_17__ {TYPE_1__ Data; } ;
typedef  TYPE_3__ QSVMid ;
typedef  TYPE_4__ AVQSVFramesContext ;
typedef  TYPE_5__ AVHWFramesContext ;
typedef  TYPE_6__ AVBufferRef ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 TYPE_3__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  mids_buf_free ; 

__attribute__((used)) static AVBufferRef *FUNC5(AVBufferRef *hw_frames_ref)
{
    AVHWFramesContext    *frames_ctx = (AVHWFramesContext*)hw_frames_ref->data;
    AVQSVFramesContext *frames_hwctx = frames_ctx->hwctx;
    int                  nb_surfaces = frames_hwctx->nb_surfaces;

    AVBufferRef *mids_buf, *hw_frames_ref1;
    QSVMid *mids;
    int i;

    hw_frames_ref1 = FUNC1(hw_frames_ref);
    if (!hw_frames_ref1)
        return NULL;

    mids = FUNC4(nb_surfaces, sizeof(*mids));
    if (!mids) {
        FUNC2(&hw_frames_ref1);
        return NULL;
    }

    mids_buf = FUNC0((uint8_t*)mids, nb_surfaces * sizeof(*mids),
                                mids_buf_free, hw_frames_ref1, 0);
    if (!mids_buf) {
        FUNC2(&hw_frames_ref1);
        FUNC3(&mids);
        return NULL;
    }

    for (i = 0; i < nb_surfaces; i++) {
        QSVMid *mid = &mids[i];
        mid->handle        = frames_hwctx->surfaces[i].Data.MemId;
        mid->hw_frames_ref = hw_frames_ref1;
    }

    return mids_buf;
}
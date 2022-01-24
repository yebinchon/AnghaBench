#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * mfxMemId ;
struct TYPE_10__ {int NumFrameActual; int /*<<< orphan*/ ** mids; } ;
typedef  TYPE_1__ mfxFrameAllocResponse ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__* hwctx; } ;
struct TYPE_11__ {int nb_surfaces; } ;
typedef  int /*<<< orphan*/  QSVMid ;
typedef  TYPE_2__ AVQSVFramesContext ;
typedef  TYPE_3__ AVHWFramesContext ;
typedef  TYPE_4__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ ** FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(mfxFrameAllocResponse *resp, AVBufferRef *hw_frames_ref,
                          AVBufferRef *mids_buf)
{
    AVHWFramesContext    *frames_ctx = (AVHWFramesContext*)hw_frames_ref->data;
    AVQSVFramesContext *frames_hwctx = frames_ctx->hwctx;
    QSVMid                     *mids = (QSVMid*)mids_buf->data;
    int                  nb_surfaces = frames_hwctx->nb_surfaces;
    int i;

    // the allocated size of the array is two larger than the number of
    // surfaces, we store the references to the frames context and the
    // QSVMid array there
    resp->mids = FUNC4(nb_surfaces + 2, sizeof(*resp->mids));
    if (!resp->mids)
        return FUNC0(ENOMEM);

    for (i = 0; i < nb_surfaces; i++)
        resp->mids[i] = &mids[i];
    resp->NumFrameActual = nb_surfaces;

    resp->mids[resp->NumFrameActual] = (mfxMemId)FUNC1(hw_frames_ref);
    if (!resp->mids[resp->NumFrameActual]) {
        FUNC3(&resp->mids);
        return FUNC0(ENOMEM);
    }

    resp->mids[resp->NumFrameActual + 1] = FUNC1(mids_buf);
    if (!resp->mids[resp->NumFrameActual + 1]) {
        FUNC2((AVBufferRef**)&resp->mids[resp->NumFrameActual]);
        FUNC3(&resp->mids);
        return FUNC0(ENOMEM);
    }

    return 0;
}
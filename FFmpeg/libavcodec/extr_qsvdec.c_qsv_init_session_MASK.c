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
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * mfxSession ;
struct TYPE_7__ {int /*<<< orphan*/ * session; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_5__ {scalar_t__ gpu_copy; int iopattern; int /*<<< orphan*/ * session; TYPE_4__ internal_qs; int /*<<< orphan*/  load_plugins; TYPE_3__ frames_ctx; } ;
typedef  TYPE_1__ QSVContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MFX_GPUCOPY_ON ; 
 int MFX_IOPATTERN_OUT_OPAQUE_MEMORY ; 
 int MFX_IOPATTERN_OUT_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, QSVContext *q, mfxSession session,
                            AVBufferRef *hw_frames_ref, AVBufferRef *hw_device_ref)
{
    int ret;

    if (q->gpu_copy == MFX_GPUCOPY_ON &&
        !(q->iopattern & MFX_IOPATTERN_OUT_SYSTEM_MEMORY))
        FUNC5(avctx, AV_LOG_WARNING, "GPU-accelerated memory copy "
                        "only works in MFX_IOPATTERN_OUT_SYSTEM_MEMORY.\n");
    if (session) {
        q->session = session;
    } else if (hw_frames_ref) {
        if (q->internal_qs.session) {
            FUNC1(q->internal_qs.session);
            q->internal_qs.session = NULL;
        }
        FUNC4(&q->frames_ctx.hw_frames_ctx);

        q->frames_ctx.hw_frames_ctx = FUNC3(hw_frames_ref);
        if (!q->frames_ctx.hw_frames_ctx)
            return FUNC0(ENOMEM);

        ret = FUNC8(avctx, &q->internal_qs.session,
                                         &q->frames_ctx, q->load_plugins,
                                         q->iopattern == MFX_IOPATTERN_OUT_OPAQUE_MEMORY,
                                         q->gpu_copy);
        if (ret < 0) {
            FUNC4(&q->frames_ctx.hw_frames_ctx);
            return ret;
        }

        q->session = q->internal_qs.session;
    } else if (hw_device_ref) {
        if (q->internal_qs.session) {
            FUNC1(q->internal_qs.session);
            q->internal_qs.session = NULL;
        }

        ret = FUNC7(avctx, &q->internal_qs.session,
                                         hw_device_ref, q->load_plugins, q->gpu_copy);
        if (ret < 0)
            return ret;

        q->session = q->internal_qs.session;
    } else {
        if (!q->internal_qs.session) {
            ret = FUNC6(avctx, &q->internal_qs,
                                               q->load_plugins, q->gpu_copy);
            if (ret < 0)
                return ret;
        }

        q->session = q->internal_qs.session;
    }

    /* make sure the decoder is uninitialized */
    FUNC2(q->session);

    return 0;
}
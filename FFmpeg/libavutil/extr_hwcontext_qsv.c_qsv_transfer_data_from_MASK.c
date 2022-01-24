#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * mfxSyncPoint ;
typedef  scalar_t__ mfxStatus ;
struct TYPE_20__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_21__ {int /*<<< orphan*/  Info; TYPE_2__ member_0; } ;
typedef  TYPE_3__ mfxFrameSurface1 ;
struct TYPE_24__ {scalar_t__* data; } ;
struct TYPE_23__ {TYPE_1__* internal; } ;
struct TYPE_22__ {int session_download_init; scalar_t__ session_download; scalar_t__ child_frames_ref; int /*<<< orphan*/  session_lock; int /*<<< orphan*/  session_cond; } ;
struct TYPE_19__ {TYPE_4__* priv; } ;
typedef  TYPE_4__ QSVFramesContext ;
typedef  TYPE_5__ AVHWFramesContext ;
typedef  TYPE_6__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ MFX_WRN_DEVICE_BUSY ; 
 scalar_t__ MFX_WRN_IN_EXECUTION ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_5__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,TYPE_6__*,TYPE_6__ const*) ; 

__attribute__((used)) static int FUNC13(AVHWFramesContext *ctx, AVFrame *dst,
                                  const AVFrame *src)
{
    QSVFramesContext  *s = ctx->internal->priv;
    mfxFrameSurface1 out = { 0 };
    mfxFrameSurface1 *in = (mfxFrameSurface1*)src->data[3];

    mfxSyncPoint sync = NULL;
    mfxStatus err;
    int ret = 0;

    while (!s->session_download_init && !s->session_download && !ret) {
#if HAVE_PTHREADS
        if (pthread_mutex_trylock(&s->session_lock) == 0) {
#endif
            if (!s->session_download_init) {
                ret = FUNC11(ctx, &s->session_download, 0);
                if (s->session_download)
                    s->session_download_init = 1;
            }
#if HAVE_PTHREADS
            pthread_mutex_unlock(&s->session_lock);
            pthread_cond_signal(&s->session_cond);
        } else {
            pthread_mutex_lock(&s->session_lock);
            while (!s->session_download_init && !s->session_download) {
                pthread_cond_wait(&s->session_cond, &s->session_lock);
            }
            pthread_mutex_unlock(&s->session_lock);
        }
#endif
    }

    if (ret < 0)
        return ret;

    if (!s->session_download) {
        if (s->child_frames_ref)
            return FUNC12(ctx, dst, src);

        FUNC3(ctx, AV_LOG_ERROR, "Surface download not possible\n");
        return FUNC0(ENOSYS);
    }

    out.Info = in->Info;
    FUNC5(dst, &out);

    do {
        err = FUNC2(s->session_download, in, &out, NULL, &sync);
        if (err == MFX_WRN_DEVICE_BUSY)
            FUNC4(1);
    } while (err == MFX_WRN_DEVICE_BUSY);

    if (err < 0 || !sync) {
        FUNC3(ctx, AV_LOG_ERROR, "Error downloading the surface\n");
        return AVERROR_UNKNOWN;
    }

    do {
        err = FUNC1(s->session_download, sync, 1000);
    } while (err == MFX_WRN_IN_EXECUTION);
    if (err < 0) {
        FUNC3(ctx, AV_LOG_ERROR, "Error synchronizing the operation: %d\n", err);
        return AVERROR_UNKNOWN;
    }

    return 0;
}
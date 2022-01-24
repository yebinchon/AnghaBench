#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {int /*<<< orphan*/  child_frames_ref; int /*<<< orphan*/  surfaces_internal; int /*<<< orphan*/  surface_ptrs; int /*<<< orphan*/  mem_ids; int /*<<< orphan*/  session_cond; int /*<<< orphan*/  session_lock; scalar_t__ session_upload_init; int /*<<< orphan*/ * session_upload; scalar_t__ session_download_init; int /*<<< orphan*/ * session_download; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ QSVFramesContext ;
typedef  TYPE_3__ AVHWFramesContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(AVHWFramesContext *ctx)
{
    QSVFramesContext *s = ctx->internal->priv;

    if (s->session_download) {
        FUNC1(s->session_download);
        FUNC0(s->session_download);
    }
    s->session_download = NULL;
    s->session_download_init = 0;

    if (s->session_upload) {
        FUNC1(s->session_upload);
        FUNC0(s->session_upload);
    }
    s->session_upload = NULL;
    s->session_upload_init = 0;

#if HAVE_PTHREADS
    pthread_mutex_destroy(&s->session_lock);
    pthread_cond_destroy(&s->session_cond);
#endif

    FUNC3(&s->mem_ids);
    FUNC3(&s->surface_ptrs);
    FUNC3(&s->surfaces_internal);
    FUNC2(&s->child_frames_ref);
}
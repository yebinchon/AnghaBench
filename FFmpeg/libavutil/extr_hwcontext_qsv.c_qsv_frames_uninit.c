
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {int child_frames_ref; int surfaces_internal; int surface_ptrs; int mem_ids; int session_cond; int session_lock; scalar_t__ session_upload_init; int * session_upload; scalar_t__ session_download_init; int * session_download; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ QSVFramesContext ;
typedef TYPE_3__ AVHWFramesContext ;


 int MFXClose (int *) ;
 int MFXVideoVPP_Close (int *) ;
 int av_buffer_unref (int *) ;
 int av_freep (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void qsv_frames_uninit(AVHWFramesContext *ctx)
{
    QSVFramesContext *s = ctx->internal->priv;

    if (s->session_download) {
        MFXVideoVPP_Close(s->session_download);
        MFXClose(s->session_download);
    }
    s->session_download = ((void*)0);
    s->session_download_init = 0;

    if (s->session_upload) {
        MFXVideoVPP_Close(s->session_upload);
        MFXClose(s->session_upload);
    }
    s->session_upload = ((void*)0);
    s->session_upload_init = 0;






    av_freep(&s->mem_ids);
    av_freep(&s->surface_ptrs);
    av_freep(&s->surfaces_internal);
    av_buffer_unref(&s->child_frames_ref);
}

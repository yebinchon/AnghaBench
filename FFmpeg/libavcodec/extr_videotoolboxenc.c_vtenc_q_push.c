
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_2__* q_tail; TYPE_2__* q_head; int cv_sample_sent; } ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_7__ {struct TYPE_7__* next; int * sei; int cm_buffer; } ;
typedef int ExtraSEI ;
typedef int CMSampleBufferRef ;
typedef TYPE_2__ BufNode ;


 int AVERROR (int ) ;
 int CFRetain (int ) ;
 int ENOMEM ;
 TYPE_2__* av_malloc (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int set_async_error (TYPE_1__*,int ) ;

__attribute__((used)) static void vtenc_q_push(VTEncContext *vtctx, CMSampleBufferRef buffer, ExtraSEI *sei)
{
    BufNode *info = av_malloc(sizeof(BufNode));
    if (!info) {
        set_async_error(vtctx, AVERROR(ENOMEM));
        return;
    }

    CFRetain(buffer);
    info->cm_buffer = buffer;
    info->sei = sei;
    info->next = ((void*)0);

    pthread_mutex_lock(&vtctx->lock);
    pthread_cond_signal(&vtctx->cv_sample_sent);

    if (!vtctx->q_head) {
        vtctx->q_head = info;
    } else {
        vtctx->q_tail->next = info;
    }

    vtctx->q_tail = info;

    pthread_mutex_unlock(&vtctx->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int async_error; int lock; int * q_tail; TYPE_2__* q_head; } ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_6__ {int cm_buffer; struct TYPE_6__* next; } ;
typedef TYPE_2__ BufNode ;


 int CFRelease (int ) ;
 int av_free (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void set_async_error(VTEncContext *vtctx, int err)
{
    BufNode *info;

    pthread_mutex_lock(&vtctx->lock);

    vtctx->async_error = err;

    info = vtctx->q_head;
    vtctx->q_head = vtctx->q_tail = ((void*)0);

    while (info) {
        BufNode *next = info->next;
        CFRelease(info->cm_buffer);
        av_free(info);
        info = next;
    }

    pthread_mutex_unlock(&vtctx->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int cond; int vmaf_score; int error; } ;
typedef TYPE_1__ LIBVMAFContext ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*,int ) ;
 int compute_vmaf_score (TYPE_1__*) ;
 int pthread_cond_signal (int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void *call_vmaf(void *ctx)
{
    LIBVMAFContext *s = (LIBVMAFContext *) ctx;
    compute_vmaf_score(s);
    if (!s->error) {
        av_log(ctx, AV_LOG_INFO, "VMAF score: %f\n",s->vmaf_score);
    } else {
        pthread_mutex_lock(&s->lock);
        pthread_cond_signal(&s->cond);
        pthread_mutex_unlock(&s->lock);
    }
    pthread_exit(((void*)0));
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ capacity; scalar_t__ start; } ;
typedef TYPE_4__ buffer_t ;
typedef int ZSTD_pthread_mutex_t ;
struct TYPE_11__ {int ldmWindowCond; int ldmWindow; int ldmWindowMutex; } ;
struct TYPE_9__ {scalar_t__ enableLdm; } ;
struct TYPE_10__ {TYPE_1__ ldmParams; } ;
struct TYPE_13__ {TYPE_3__ serial; TYPE_2__ params; } ;
typedef TYPE_5__ ZSTDMT_CCtx ;


 int DEBUGLOG (int,char*,...) ;
 scalar_t__ ZSTDMT_doesOverlapWindow (TYPE_4__,int ) ;
 int ZSTD_PTHREAD_MUTEX_LOCK (int *) ;
 int ZSTD_pthread_cond_wait (int *,int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ZSTDMT_waitForLdmComplete(ZSTDMT_CCtx* mtctx, buffer_t buffer)
{
    if (mtctx->params.ldmParams.enableLdm) {
        ZSTD_pthread_mutex_t* mutex = &mtctx->serial.ldmWindowMutex;
        DEBUGLOG(5, "ZSTDMT_waitForLdmComplete");
        DEBUGLOG(5, "source  [0x%zx, 0x%zx)",
                    (size_t)buffer.start,
                    (size_t)buffer.start + buffer.capacity);
        ZSTD_PTHREAD_MUTEX_LOCK(mutex);
        while (ZSTDMT_doesOverlapWindow(buffer, mtctx->serial.ldmWindow)) {
            DEBUGLOG(5, "Waiting for LDM to finish...");
            ZSTD_pthread_cond_wait(&mtctx->serial.ldmWindowCond, mutex);
        }
        DEBUGLOG(6, "Done waiting for LDM to finish");
        ZSTD_pthread_mutex_unlock(mutex);
    }
}

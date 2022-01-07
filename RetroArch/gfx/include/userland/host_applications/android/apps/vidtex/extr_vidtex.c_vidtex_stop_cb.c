
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int sem_decoded; int stop_reason; } ;
typedef TYPE_1__ VIDTEX_T ;


 int vcos_semaphore_post (int *) ;
 int vidtex_set_quit (TYPE_1__*,int) ;

__attribute__((used)) static void vidtex_stop_cb(void *ctx, uint32_t stop_reason)
{
   VIDTEX_T *vt = ctx;
   vt->stop_reason = stop_reason;
   vidtex_set_quit(vt, 1);
   vcos_semaphore_post(&vt->sem_decoded);
}

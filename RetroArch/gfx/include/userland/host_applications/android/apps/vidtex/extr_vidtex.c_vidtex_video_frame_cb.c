
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * video_frame; int sem_drawn; int sem_decoded; } ;
typedef TYPE_1__ VIDTEX_T ;


 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;

__attribute__((used)) static void vidtex_video_frame_cb(void *ctx, void *ob)
{
   if (ob)
   {
      VIDTEX_T *vt = ctx;

      vt->video_frame = ob;
      vcos_semaphore_post(&vt->sem_decoded);
      vcos_semaphore_wait(&vt->sem_drawn);
      vt->video_frame = ((void*)0);
   }
}

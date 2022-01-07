
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {int flags; int fd; scalar_t__ buffer_size; scalar_t__ running; scalar_t__ prepared; int mmap_buffer; } ;


 int PCM_MMAP ;
 struct pcm bad_pcm ;
 int close (int) ;
 int free (struct pcm*) ;
 int munmap (int ,int ) ;
 int pcm_frames_to_bytes (struct pcm*,scalar_t__) ;
 int pcm_hw_munmap_status (struct pcm*) ;
 int pcm_stop (struct pcm*) ;

__attribute__((used)) static int pcm_close(struct pcm *pcm)
{
   if (pcm == &bad_pcm)
      return 0;

   pcm_hw_munmap_status(pcm);

   if (pcm->flags & PCM_MMAP)
   {
      pcm_stop(pcm);
      munmap(pcm->mmap_buffer, pcm_frames_to_bytes(pcm, pcm->buffer_size));
   }

   if (pcm->fd >= 0)
      close(pcm->fd);
   pcm->prepared = 0;
   pcm->running = 0;
   pcm->buffer_size = 0;
   pcm->fd = -1;
   free(pcm);
   return 0;
}

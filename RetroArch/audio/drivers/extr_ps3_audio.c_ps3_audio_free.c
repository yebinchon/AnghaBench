
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int quit_thread; int cond; int cond_lock; int lock; int buffer; int audio_port; int thread; } ;
typedef TYPE_1__ ps3_audio_t ;


 int cellAudioPortClose (int ) ;
 int cellAudioQuit () ;
 int fifo_free (int ) ;
 int free (void*) ;
 int ps3_audio_start (TYPE_1__*,int) ;
 int ps3_audio_stop (TYPE_1__*) ;
 int sys_lwcond_destroy (int *) ;
 int sys_lwmutex_destroy (int *) ;
 int sys_ppu_thread_join (int ,int *) ;

__attribute__((used)) static void ps3_audio_free(void *data)
{
   uint64_t val;
   ps3_audio_t *aud = data;

   aud->quit_thread = 1;
   ps3_audio_start(aud, 0);
   sys_ppu_thread_join(aud->thread, &val);

   ps3_audio_stop(aud);
   cellAudioPortClose(aud->audio_port);
   cellAudioQuit();
   fifo_free(aud->buffer);

   sys_lwmutex_destroy(&aud->lock);
   sys_lwmutex_destroy(&aud->cond_lock);
   sys_lwcond_destroy(&aud->cond);

   free(data);
}

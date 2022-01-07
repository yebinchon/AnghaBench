
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* device; unsigned int out_rate; unsigned int* new_rate; unsigned int latency; unsigned int block_frames; int alive; int stopped; scalar_t__ inited; int lock; int cond; int thread; int const* driver; } ;
typedef TYPE_1__ audio_thread_t ;
typedef int audio_driver_t ;


 int audio_thread ;
 int audio_thread_free (TYPE_1__*) ;
 int audio_thread_loop ;
 scalar_t__ calloc (int,int) ;
 int scond_new () ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_new () ;
 int slock_unlock (int ) ;
 int sthread_create (int ,TYPE_1__*) ;

bool audio_init_thread(const audio_driver_t **out_driver,
      void **out_data, const char *device, unsigned audio_out_rate,
      unsigned *new_rate, unsigned latency,
      unsigned block_frames, const audio_driver_t *drv)
{
   audio_thread_t *thr = (audio_thread_t*)calloc(1, sizeof(*thr));
   if (!thr)
      return 0;

   thr->driver = (const audio_driver_t*)drv;
   thr->device = device;
   thr->out_rate = audio_out_rate;
   thr->new_rate = new_rate;
   thr->latency = latency;
   thr->block_frames = block_frames;

   if (!(thr->cond = scond_new()))
      goto error;
   if (!(thr->lock = slock_new()))
      goto error;

   thr->alive = 1;
   thr->stopped = 1;

   if (!(thr->thread = sthread_create(audio_thread_loop, thr)))
      goto error;


   slock_lock(thr->lock);
   while (!thr->inited)
      scond_wait(thr->cond, thr->lock);
   slock_unlock(thr->lock);

   if (thr->inited < 0)
      goto error;

   *out_driver = &audio_thread;
   *out_data = thr;
   return 1;

error:
   *out_driver = ((void*)0);
   *out_data = ((void*)0);
   audio_thread_free(thr);
   return 0;
}

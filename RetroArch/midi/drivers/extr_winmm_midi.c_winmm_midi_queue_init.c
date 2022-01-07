
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wr_idx; scalar_t__ rd_idx; TYPE_1__* events; int * data; } ;
typedef TYPE_2__ winmm_midi_queue_t ;
struct TYPE_4__ {scalar_t__ delta_time; int * data; } ;


 unsigned int WINMM_MIDI_BUF_LEN ;

__attribute__((used)) static void winmm_midi_queue_init(winmm_midi_queue_t *q)
{
   unsigned i, j;

   for (i = j = 0; i < WINMM_MIDI_BUF_LEN; ++i, j += 4)
   {
      q->events[i].data = &q->data[j];
      q->events[i].delta_time = 0;
   }

   q->rd_idx = 0;
   q->wr_idx = 0;
}

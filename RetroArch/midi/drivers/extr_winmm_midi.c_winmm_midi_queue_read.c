
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t rd_idx; size_t wr_idx; TYPE_2__* events; } ;
typedef TYPE_1__ winmm_midi_queue_t ;
struct TYPE_6__ {unsigned int data_size; int delta_time; int * data; } ;
typedef TYPE_2__ midi_event_t ;


 int RARCH_ERR (char*) ;
 int WINMM_MIDI_BUF_LEN ;

__attribute__((used)) static bool winmm_midi_queue_read(winmm_midi_queue_t *q, midi_event_t *ev)
{
   unsigned i;
   midi_event_t *src_ev = ((void*)0);

   if (q->rd_idx == q->wr_idx)
      return 0;

   if (ev->data_size < q->events[q->rd_idx].data_size)
   {



      return 0;
   }

   src_ev = &q->events[q->rd_idx];

   for (i = 0; i < src_ev->data_size; ++i)
      ev->data[i] = src_ev->data[i];

   ev->data_size = src_ev->data_size;
   ev->delta_time = src_ev->delta_time;

   if (q->rd_idx + 1 == WINMM_MIDI_BUF_LEN)
      q->rd_idx = 0;
   else
      ++q->rd_idx;

   return 1;
}

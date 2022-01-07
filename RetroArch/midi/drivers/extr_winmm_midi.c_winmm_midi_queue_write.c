
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rd_idx; int wr_idx; TYPE_2__* events; } ;
typedef TYPE_1__ winmm_midi_queue_t ;
struct TYPE_6__ {int data_size; int delta_time; int * data; } ;
typedef TYPE_2__ midi_event_t ;


 int RARCH_ERR (char*) ;
 int WINMM_MIDI_BUF_LEN ;

__attribute__((used)) static bool winmm_midi_queue_write(winmm_midi_queue_t *q, const midi_event_t *ev)
{
   int wr_avail;
   unsigned i;
   int rd_idx = q->rd_idx;
   midi_event_t *dest_ev = ((void*)0);

   if (q->wr_idx >= rd_idx)
      wr_avail = WINMM_MIDI_BUF_LEN - q->wr_idx + rd_idx;
   else
      wr_avail = rd_idx - q->wr_idx - 1;

   if (wr_avail < 1)
   {



      return 0;
   }

   dest_ev = &q->events[q->wr_idx];
   if (ev->data_size > 4)
   {



      return 0;
   }

   for (i = 0; i < ev->data_size; ++i)
      dest_ev->data[i] = ev->data[i];

   dest_ev->data_size = ev->data_size;
   dest_ev->delta_time = ev->delta_time;

   if (q->wr_idx + 1 == WINMM_MIDI_BUF_LEN)
      q->wr_idx = 0;
   else
      ++q->wr_idx;

   return 1;
}

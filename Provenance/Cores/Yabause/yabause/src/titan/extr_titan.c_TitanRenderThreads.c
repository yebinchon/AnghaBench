
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pixel_t ;
struct TYPE_6__ {int use_simplified; TYPE_1__* lines; int * dispbuffer; } ;
struct TYPE_5__ {int vdp2height; } ;
struct TYPE_4__ {int start; int end; } ;


 int TitanRenderSimplifiedCheck (int *,int,int,int) ;
 int TitanStartPriorityThread (int) ;
 int TitanWaitForPriorityThread (int) ;
 TYPE_3__ priority_thread_context ;
 TYPE_2__ tt_context ;
 int vidsoft_num_priority_threads ;

void TitanRenderThreads(pixel_t * dispbuffer, int can_use_simplified)
{
   int i;
   int total_jobs = vidsoft_num_priority_threads + 1;
   int num_lines_per_job = tt_context.vdp2height / total_jobs;
   int remainder = tt_context.vdp2height % total_jobs;
   int starts[6] = { 0 };
   int ends[6] = { 0 };

   priority_thread_context.dispbuffer = dispbuffer;
   priority_thread_context.use_simplified = can_use_simplified;

   for (i = 0; i < total_jobs; i++)
   {
      starts[i] = num_lines_per_job * i;
      ends[i] = ((i + 1) * num_lines_per_job);
   }

   for (i = 0; i < vidsoft_num_priority_threads; i++)
   {
      priority_thread_context.lines[i].start = starts[i+1];
      priority_thread_context.lines[i].end = ends[i+1];
   }


   priority_thread_context.lines[vidsoft_num_priority_threads - 1].end += remainder;

   for (i = 0; i < vidsoft_num_priority_threads; i++)
   {
      TitanStartPriorityThread(i);
   }

   TitanRenderSimplifiedCheck(dispbuffer, starts[0], ends[0], can_use_simplified);

   for (i = 0; i < vidsoft_num_priority_threads; i++)
   {
      TitanWaitForPriorityThread(i);
   }
}

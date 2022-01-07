
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;


 int OSSignalCond (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int g_draw_done ;
 int g_video_cond ;
 int retraceCount ;

__attribute__((used)) static void retrace_callback(u32 retrace_count)
{
   uint32_t level = 0;

   (void)retrace_count;

   g_draw_done = 1;
   OSSignalCond(g_video_cond);
   _CPU_ISR_Disable(level);
   retraceCount = retrace_count;
   _CPU_ISR_Restore(level);
}

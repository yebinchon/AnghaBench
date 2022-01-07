
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__ retraceCount ;
 int video_queue ;

void VIDEO_WaitVSync(void)
{
 u32 level;
 u32 retcnt;

 _CPU_ISR_Disable(level);
 retcnt = retraceCount;
 do {
  LWP_ThreadSleep(video_queue);
 } while(retraceCount==retcnt);
 _CPU_ISR_Restore(level);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int VIRetraceCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int postRetraceCB ;

VIRetraceCallback VIDEO_SetPostRetraceCallback(VIRetraceCallback callback)
{
 u32 level = 0;
 VIRetraceCallback ret = postRetraceCB;
 _CPU_ISR_Disable(level);
 postRetraceCB = callback;
 _CPU_ISR_Restore(level);
 return ret;
}

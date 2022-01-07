
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lwp_t ;


 int LWP_GetSelf () ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _gxcurrentlwp ;

lwp_t GX_SetCurrentGXThread()
{
 u32 level;

 _CPU_ISR_Disable(level);
 lwp_t ret = _gxcurrentlwp;
 _gxcurrentlwp = LWP_GetSelf();
 _CPU_ISR_Restore(level);

 return ret;
}

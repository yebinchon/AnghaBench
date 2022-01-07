
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;


 int _CPU_ISR_Disable (void*) ;
 int _CPU_ISR_Restore (void*) ;
 void* __dvd_workaround ;
 void* __dvd_workaroundseek ;

__attribute__((used)) static void __DVDLowWATypeSet(u32 workaround,u32 workaroundseek)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __dvd_workaround = workaround;
 __dvd_workaroundseek = workaroundseek;
 _CPU_ISR_Restore(level);
}

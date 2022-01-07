
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_ESP32_FlushNoLock (unsigned long,unsigned long) ;
 int SEGGER_SYSVIEW_LOCK () ;
 int SEGGER_SYSVIEW_UNLOCK () ;

void SEGGER_RTT_ESP32_Flush(unsigned long min_sz, unsigned long tmo)
{
    SEGGER_SYSVIEW_LOCK();
    SEGGER_RTT_ESP32_FlushNoLock(min_sz, tmo);
    SEGGER_SYSVIEW_UNLOCK();
}

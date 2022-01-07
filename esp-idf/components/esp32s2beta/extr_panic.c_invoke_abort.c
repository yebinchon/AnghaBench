
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPTRACE_ONPANIC_HOST_FLUSH_TMO ;
 int CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH ;
 int ESP_APPTRACE_DEST_TRAX ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 int abort_called ;
 int esp_apptrace_flush_nolock (int ,int ,int ) ;
 scalar_t__ esp_cpu_in_ocd_debug_mode () ;

__attribute__((used)) static __attribute__((noreturn)) inline void invoke_abort(void)
{
    abort_called = 1;
    while (1) {
        if (esp_cpu_in_ocd_debug_mode()) {
            __asm__ ("break 0,0");
        }
        *((int *) 0) = 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint32_t ;
typedef int os_log_type_t ;
typedef int * os_log_t ;
typedef int boolean_t ;


 int ATM_TRACE_DISABLE ;
 int ATM_TRACE_OFF ;
 int _os_log_replay ;
 int _os_log_to_log_internal (int *,int ,char const*,int ,void*,void*) ;
 int _os_log_to_msgbuf_internal (char const*,int ,int,int) ;
 int atm_get_diagnostic_config () ;
 int early_boot_complete ;
 scalar_t__ oslog_is_safe () ;

__attribute__((used)) static void
_os_log_with_args_internal(os_log_t oslog, os_log_type_t type,
  const char *format, va_list args, void *addr, void *dso)
{
    uint32_t logging_config = atm_get_diagnostic_config();
    boolean_t safe;
    boolean_t logging;

    if (format[0] == '\0') {
        return;
    }


    safe = (!early_boot_complete || oslog_is_safe());

 if (logging_config & ATM_TRACE_DISABLE || logging_config & ATM_TRACE_OFF) {
  logging = 0;
 } else {
  logging = 1;
 }

    if (oslog != &_os_log_replay) {
        _os_log_to_msgbuf_internal(format, args, safe, logging);
    }

    if (safe && logging) {
        _os_log_to_log_internal(oslog, type, format, args, addr, dso);
    }
}

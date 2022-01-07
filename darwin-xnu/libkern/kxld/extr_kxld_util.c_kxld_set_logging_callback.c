
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDLoggingCallback ;


 int s_logging_callback ;

void
kxld_set_logging_callback(KXLDLoggingCallback logging_callback)
{
    s_logging_callback = logging_callback;
}

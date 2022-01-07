
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTOVERLAY_LOGGING_FUNC ;


 int * dtoverlay_logging_func ;

void dtoverlay_set_logging_func(DTOVERLAY_LOGGING_FUNC *func)
{
    dtoverlay_logging_func = func;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timebase_callback_func ;


 int PE_call_timebase_callback () ;
 int gTimebaseCallback ;

void PE_register_timebase_callback(timebase_callback_func callback)
{
    gTimebaseCallback = callback;

    PE_call_timebase_callback();
}

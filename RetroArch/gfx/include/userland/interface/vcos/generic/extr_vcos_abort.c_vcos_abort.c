
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_ALERT (char*) ;
 int _bkpt () ;
 int abort () ;
 int vclib_cache_flush () ;
 int vcos_backtrace_self () ;

void vcos_abort(void)
{
   VCOS_ALERT("vcos_abort: Halting");
   abort();

}

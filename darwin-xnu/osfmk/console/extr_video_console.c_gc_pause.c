
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int VCPUTC_LOCK_LOCK () ;
 int VCPUTC_LOCK_UNLOCK () ;
 int console_is_serial () ;
 int disableConsoleOutput ;
 int gc_enabled ;
 scalar_t__ gc_paused_progress ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splhigh () ;
 int splx (int ) ;
 int thread_call_enter_delayed (int *,int ) ;
 int vc_progress_call ;
 int vc_progress_deadline ;
 scalar_t__ vc_progress_enable ;
 int vc_progress_lock ;
 int vc_progress_withmeter ;
 int vc_progressmeter_call ;
 int vc_progressmeter_deadline ;

__attribute__((used)) static void
gc_pause( boolean_t pause, boolean_t graphics_now )
{
 spl_t s;

 s = splhigh( );
 VCPUTC_LOCK_LOCK( );

    disableConsoleOutput = (pause && !console_is_serial());
    gc_enabled = (!pause && !graphics_now);

    VCPUTC_LOCK_UNLOCK( );

    simple_lock(&vc_progress_lock);

    if (pause)
    {
        gc_paused_progress = vc_progress_enable;
 vc_progress_enable = FALSE;
    }
    else vc_progress_enable = gc_paused_progress;

    if (vc_progress_enable)
    {

 if (1 & vc_progress_withmeter) thread_call_enter_delayed(&vc_progressmeter_call, vc_progressmeter_deadline);
 else

 thread_call_enter_delayed(&vc_progress_call, vc_progress_deadline);
    }

    simple_unlock(&vc_progress_lock);
    splx(s);
}

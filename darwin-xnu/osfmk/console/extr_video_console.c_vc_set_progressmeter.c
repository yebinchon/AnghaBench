
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;


 int internal_set_progressmeter (int) ;
 scalar_t__ kProgressMeterKernel ;
 int kProgressMeterMax ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splhigh () ;
 int splx (int ) ;
 int vc_progress_lock ;
 scalar_t__ vc_progressmeter_enable ;

void
vc_set_progressmeter(int new_value)
{
    spl_t s;

    s = splhigh();
    simple_lock(&vc_progress_lock);

    if (vc_progressmeter_enable && (kProgressMeterKernel != vc_progressmeter_enable))
    {
 internal_set_progressmeter((new_value * kProgressMeterMax) / 100);
    }

    simple_unlock(&vc_progress_lock);
    splx(s);
}

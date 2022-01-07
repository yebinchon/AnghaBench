
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_enable_progressmeter (int ) ;
 scalar_t__ kProgressMeterKernel ;
 int kProgressMeterOff ;
 int kProgressMeterUser ;
 scalar_t__ vc_progressmeter_enable ;
 int vc_progressmeter_hold ;

void
vc_enable_progressmeter(int new_value)
{
    if (kProgressMeterKernel == vc_progressmeter_enable)
    {
     vc_progressmeter_hold = new_value;
    }
    else
    {
 internal_enable_progressmeter(new_value ? kProgressMeterUser : kProgressMeterOff);
    }
}

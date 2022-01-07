
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kProgressMeterEnd ;
 int vc_progress_meter_end ;
 int vc_progress_meter_start ;

__attribute__((used)) static uint32_t vc_progressmeter_range(uint32_t pos)
{
    uint32_t ret;

    if (pos > kProgressMeterEnd) pos = kProgressMeterEnd;
    ret = vc_progress_meter_start
     + ((pos * (vc_progress_meter_end - vc_progress_meter_start)) / kProgressMeterEnd);

    return (ret);
}

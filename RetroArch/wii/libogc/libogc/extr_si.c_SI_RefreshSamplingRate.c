
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SI_SetSamplingRate (int ) ;
 int sampling_rate ;

void SI_RefreshSamplingRate()
{
 SI_SetSamplingRate(sampling_rate);
}

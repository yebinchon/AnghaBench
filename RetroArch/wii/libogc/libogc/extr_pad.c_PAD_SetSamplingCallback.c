
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sampling_callback ;


 int SI_RegisterPollingHandler (int ) ;
 int SI_UnregisterPollingHandler (int ) ;
 scalar_t__ __pad_samplingcallback ;
 int __pad_samplinghandler ;

sampling_callback PAD_SetSamplingCallback(sampling_callback cb)
{
 sampling_callback ret;

 ret = __pad_samplingcallback;
 __pad_samplingcallback = cb;
 if(cb) {
  SI_RegisterPollingHandler(__pad_samplinghandler);
 } else {
  SI_UnregisterPollingHandler(__pad_samplinghandler);
 }

 return ret;
}

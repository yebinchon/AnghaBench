
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CCV_STREAM_CONTEXT_GPU ;
 scalar_t__ CCV_STREAM_GET_CONTEXT (int const) ;
 int ccv_nnc_gpu_device_count () ;

int ccv_nnc_device_count(const int type)
{




 return 1;
}

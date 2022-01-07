
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int clock_sec_t ;
typedef int clock_nsec_t ;



uint64_t
vm_compressor_compute_elapsed_msecs(clock_sec_t end_sec, clock_nsec_t end_nsec, clock_sec_t start_sec, clock_nsec_t start_nsec)
{
        uint64_t end_msecs;
        uint64_t start_msecs;

 end_msecs = (end_sec * 1000) + end_nsec / 1000000;
 start_msecs = (start_sec * 1000) + start_nsec / 1000000;

 return (end_msecs - start_msecs);
}

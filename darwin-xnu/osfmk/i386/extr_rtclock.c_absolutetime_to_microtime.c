
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int _absolutetime_to_microtime (int ,int *,int *) ;

void
absolutetime_to_microtime(
 uint64_t abstime,
 clock_sec_t *secs,
 clock_usec_t *microsecs)
{
 _absolutetime_to_microtime(abstime, secs, microsecs);
}

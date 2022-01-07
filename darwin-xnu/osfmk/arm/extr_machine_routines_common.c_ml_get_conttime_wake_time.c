
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ml_get_conttime_offset () ;

uint64_t
ml_get_conttime_wake_time(void)
{

 return ml_get_conttime_offset();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ delay_spin_threshold ;

boolean_t
ml_delay_should_spin(uint64_t interval)
{
 return (interval < delay_spin_threshold) ? TRUE : FALSE;
}

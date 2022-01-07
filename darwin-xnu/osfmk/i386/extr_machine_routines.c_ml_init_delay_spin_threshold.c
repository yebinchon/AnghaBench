
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSEC_PER_USEC ;
 int delay_spin_threshold ;
 int nanoseconds_to_absolutetime (int,int *) ;

void
ml_init_delay_spin_threshold(int threshold_us)
{
 nanoseconds_to_absolutetime(threshold_us * NSEC_PER_USEC, &delay_spin_threshold);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSEC_PER_USEC ;
 int delay_for_interval (int,int ) ;

void
delay(
 int usec)
{
 delay_for_interval((usec < 0)? -usec: usec, NSEC_PER_USEC);
}

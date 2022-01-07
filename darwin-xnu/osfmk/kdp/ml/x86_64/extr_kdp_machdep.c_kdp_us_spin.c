
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay (int) ;

void
kdp_us_spin(int usec)
{
    delay(usec/100);
}

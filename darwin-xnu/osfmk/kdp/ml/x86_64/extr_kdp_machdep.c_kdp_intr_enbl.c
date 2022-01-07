
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int splx (int) ;

void
kdp_intr_enbl(int s)
{
 splx(s);
}

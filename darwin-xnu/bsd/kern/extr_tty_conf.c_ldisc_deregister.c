
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOADABLE_LDISC ;
 int MAXLDISC ;
 int * linesw ;
 int nodisc ;

void
ldisc_deregister(int discipline)
{
 if (discipline >= LOADABLE_LDISC && discipline < MAXLDISC) {
  linesw[discipline] = nodisc;
 }
}

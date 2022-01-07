
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pending_interrupt ;

void sighandler(int dummy)
{
  pending_interrupt = 1;
}

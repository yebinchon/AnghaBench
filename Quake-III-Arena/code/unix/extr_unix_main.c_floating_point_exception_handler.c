
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int signal (int ,void (*) (int)) ;

void floating_point_exception_handler(int whatever)
{
  signal(SIGFPE, floating_point_exception_handler);
}

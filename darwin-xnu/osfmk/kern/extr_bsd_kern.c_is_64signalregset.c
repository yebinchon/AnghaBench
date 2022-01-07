
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_task () ;
 scalar_t__ task_has_64Bit_data (int ) ;

int is_64signalregset(void)
{
 if (task_has_64Bit_data(current_task())) {
  return(1);
 }

 return(0);
}

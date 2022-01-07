
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MsInitProcessCallOnce () ;
 int init_proc_once_flag ;

void InitProcessCallOnce()
{
 if (init_proc_once_flag == 0)
 {
  init_proc_once_flag = 1;




 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * __dvd_waitingqueue ;
 int __lwp_queue_init_empty (int *) ;

__attribute__((used)) static void __dvd_clearwaitingqueue()
{
 u32 i;

 for(i=0;i<4;i++)
  __lwp_queue_init_empty(&__dvd_waitingqueue[i]);
}

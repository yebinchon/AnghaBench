
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {int dummy; } ;


 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;

struct uthread *
current_uthread()
{
 thread_t th = current_thread();

 return((struct uthread *)get_bsdthread_info(th));
}

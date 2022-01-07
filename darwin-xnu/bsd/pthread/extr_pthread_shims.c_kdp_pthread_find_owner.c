
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct stackshot_thread_waitinfo {int dummy; } ;
struct TYPE_2__ {int (* pthread_find_owner ) (int ,struct stackshot_thread_waitinfo*) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,struct stackshot_thread_waitinfo*) ;

void
kdp_pthread_find_owner(thread_t thread, struct stackshot_thread_waitinfo *waitinfo)
{
 if (pthread_functions->pthread_find_owner)
  pthread_functions->pthread_find_owner(thread, waitinfo);
}

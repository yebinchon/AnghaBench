
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {scalar_t__ uthread; } ;


 int bsd_setthreadname (scalar_t__,char const*) ;

void
thread_set_thread_name(thread_t th, const char* name)
{
 if ((th) && (th->uthread) && name) {
  bsd_setthreadname(th->uthread, name);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ uthread; } ;


 int FALSE ;
 int bsd_hasthreadname (scalar_t__) ;

boolean_t
thread_has_thread_name(thread_t th)
{
 if ((th) && (th->uthread)) {
  return bsd_hasthreadname(th->uthread);
 }





 return FALSE;
}

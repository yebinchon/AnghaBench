
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int state; int block_hint; } ;


 int TH_WAIT ;






 int * kdp_pthread_get_thread_kwq (TYPE_1__*) ;

__attribute__((used)) static int
stackshot_thread_has_valid_waitinfo(thread_t thread)
{
 if (!(thread->state & TH_WAIT))
  return 0;

 switch (thread->block_hint) {

  case 128:
  case 133:
   return 0;


  case 131:
  case 130:
  case 129:
  case 132:
   return (kdp_pthread_get_thread_kwq(thread) != ((void*)0));

  default:
   return 1;
 }
}

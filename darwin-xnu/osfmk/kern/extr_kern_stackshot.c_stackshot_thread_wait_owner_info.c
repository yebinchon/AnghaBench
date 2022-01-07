
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int wait_type; int context; int owner; int waiter; } ;
typedef TYPE_1__ thread_waitinfo_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_19__ {int block_hint; int wait_event; int waitq; } ;
 int kdp_lck_mtx_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_mqueue_recv_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_mqueue_send_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_pthread_find_owner (TYPE_2__*,TYPE_1__*) ;
 int kdp_rwlck_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_sema_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_ulock_find_owner (int ,int ,TYPE_1__*) ;
 int kdp_wait4_find_process (TYPE_2__*,int ,TYPE_1__*) ;
 int kdp_workloop_sync_wait_find_owner (TYPE_2__*,int ,TYPE_1__*) ;
 int thread_tid (TYPE_2__*) ;

__attribute__((used)) static void
stackshot_thread_wait_owner_info(thread_t thread, thread_waitinfo_t *waitinfo)
{
 waitinfo->waiter = thread_tid(thread);
 waitinfo->wait_type = thread->block_hint;
 switch (waitinfo->wait_type) {
  case 141:
   kdp_lck_mtx_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 132:
   kdp_mqueue_recv_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 131:
   kdp_mqueue_send_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 130:
   kdp_sema_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 129:
   kdp_ulock_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 140:
  case 138:
  case 139:
   kdp_rwlck_find_owner(thread->waitq, thread->wait_event, waitinfo);
   break;
  case 135:
  case 134:
  case 133:
  case 136:
   kdp_pthread_find_owner(thread, waitinfo);
   break;
  case 128:
   kdp_workloop_sync_wait_find_owner(thread, thread->wait_event, waitinfo);
   break;
  case 137:
   kdp_wait4_find_process(thread, thread->wait_event, waitinfo);
   break;
  default:
   waitinfo->owner = 0;
   waitinfo->context = 0;
   break;
 }
}

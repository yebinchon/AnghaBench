
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network_mysqld_con ;
struct TYPE_4__ {int notify_receive_fd; int notify_send_fd; int event_queue; scalar_t__ event_base; int * thr; int notify_fd_event; } ;
typedef TYPE_1__ chassis_event_thread_t ;


 int closesocket (int) ;
 int event_base_free (scalar_t__) ;
 int event_del (int *) ;
 int * g_async_queue_try_pop (int ) ;
 int g_async_queue_unref (int ) ;
 int g_free (TYPE_1__*) ;
 int g_thread_join (int *) ;
 int network_mysqld_con_free (int *) ;

void chassis_event_thread_free(chassis_event_thread_t *thread) {
 if (!thread) return;

 if (thread->thr) g_thread_join(thread->thr);

 if (thread->notify_receive_fd != -1) {
  event_del(&(thread->notify_fd_event));
  closesocket(thread->notify_receive_fd);
 }
 if (thread->notify_send_fd != -1) {
  closesocket(thread->notify_send_fd);
 }


 if (thread->thr != ((void*)0) && thread->event_base) event_base_free(thread->event_base);

 network_mysqld_con* con;
 while (con = g_async_queue_try_pop(thread->event_queue)) {
  network_mysqld_con_free(con);
 }
 g_async_queue_unref(thread->event_queue);

 g_free(thread);
}

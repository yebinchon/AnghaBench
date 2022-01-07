
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notify_receive_fd; int notify_send_fd; int notify_fd_event; int event_base; int * chas; } ;
typedef TYPE_1__ chassis_event_thread_t ;
typedef int chassis ;


 int EV_PERSIST ;
 int EV_READ ;
 int G_STRLOC ;
 int chassis_event_handle ;
 int errno ;
 int event_add (int *,int *) ;
 int event_base_new () ;
 int event_base_set (int ,int *) ;
 int event_set (int *,int,int,int ,TYPE_1__*) ;
 int g_error (char*,int ,int ,int) ;
 int g_strerror (int) ;
 scalar_t__ pipe (int*) ;

int chassis_event_threads_init_thread(chassis_event_thread_t *thread, chassis *chas) {
 thread->event_base = event_base_new();
 thread->chas = chas;

 int fds[2];
 if (pipe(fds)) {
  int err;
  err = errno;
  g_error("%s: evutil_socketpair() failed: %s (%d)",
    G_STRLOC,
    g_strerror(err),
    err);
 }
 thread->notify_receive_fd = fds[0];
 thread->notify_send_fd = fds[1];

 event_set(&(thread->notify_fd_event), thread->notify_receive_fd, EV_READ | EV_PERSIST, chassis_event_handle, thread);
 event_base_set(thread->event_base, &(thread->notify_fd_event));
 event_add(&(thread->notify_fd_event), ((void*)0));

 return 0;
}

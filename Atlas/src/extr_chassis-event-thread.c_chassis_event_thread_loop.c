
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {int event_base; int index; } ;
typedef TYPE_1__ chassis_event_thread_t ;


 scalar_t__ EINTR ;
 int GUINT_TO_POINTER (int ) ;
 int G_STRLOC ;
 scalar_t__ WSAGetLastError () ;
 int chassis_is_shutdown () ;
 scalar_t__ errno ;
 int event_base_dispatch (int ) ;
 scalar_t__ event_base_loopexit (int ,struct timeval*) ;
 int g_assert (int) ;
 int g_critical (char*,int ,int ,scalar_t__) ;
 int g_private_set (int *,int ) ;
 int g_strerror (scalar_t__) ;
 int tls_index ;

void *chassis_event_thread_loop(chassis_event_thread_t *thread) {
 g_private_set(&tls_index, GUINT_TO_POINTER(thread->index));



 while (!chassis_is_shutdown()) {
  struct timeval timeout;
  int r;

  timeout.tv_sec = 1;
  timeout.tv_usec = 0;

  g_assert(event_base_loopexit(thread->event_base, &timeout) == 0);

  r = event_base_dispatch(thread->event_base);

  if (r == -1) {



   if (errno == EINTR) continue;
   g_critical("%s: leaving chassis_event_thread_loop early, errno != EINTR was: %s (%d)", G_STRLOC, g_strerror(errno), errno);
   break;
  }
 }

 return ((void*)0);
}

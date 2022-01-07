
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_8__ {int thr; } ;
typedef TYPE_1__ chassis_event_thread_t ;
struct TYPE_10__ {int message; } ;
struct TYPE_9__ {int len; TYPE_1__** pdata; } ;
typedef int GThreadFunc ;
typedef TYPE_2__ GPtrArray ;
typedef TYPE_3__ GError ;


 int G_STRLOC ;
 int TRUE ;
 scalar_t__ chassis_event_thread_loop ;
 int g_critical (char*,int ,int ) ;
 int g_error_free (TYPE_3__*) ;
 int g_message (char*,int ,int) ;
 int g_thread_create (int ,TYPE_1__*,int ,TYPE_3__**) ;

void chassis_event_threads_start(GPtrArray *threads) {
 guint i;

 g_message("%s: starting %d threads", G_STRLOC, threads->len - 1);

 for (i = 1; i < threads->len; i++) {
  chassis_event_thread_t *thread = threads->pdata[i];
  GError *gerr = ((void*)0);

  thread->thr = g_thread_create((GThreadFunc)chassis_event_thread_loop, thread, TRUE, &gerr);

  if (gerr) {
   g_critical("%s: %s", G_STRLOC, gerr->message);
   g_error_free(gerr);
   gerr = ((void*)0);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* event_rep; TYPE_1__* event_list; int event_sema; } ;
struct TYPE_8__ {int eEvent; struct TYPE_8__* next; } ;
typedef TYPE_2__ ILCLIENT_T ;


 int NUM_EVENTS ;
 int VCOS_LOG_CATEGORY ;
 int VCOS_LOG_WARN ;
 int VCOS_SUCCESS ;
 int ilclient_lock_events (TYPE_2__*) ;
 int ilclient_unlock_events (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int vc_assert (int) ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;
 TYPE_2__* vcos_malloc (int,char*) ;
 int vcos_semaphore_create (int *,char*,int) ;

ILCLIENT_T *ilclient_init()
{
   ILCLIENT_T *st = vcos_malloc(sizeof(ILCLIENT_T), "ilclient");
   int i;

   if (!st)
      return ((void*)0);

   vcos_log_set_level(VCOS_LOG_CATEGORY, VCOS_LOG_WARN);
   vcos_log_register("ilclient", VCOS_LOG_CATEGORY);

   memset(st, 0, sizeof(ILCLIENT_T));

   i = vcos_semaphore_create(&st->event_sema, "il:event", 1);
   vc_assert(i == VCOS_SUCCESS);

   ilclient_lock_events(st);
   st->event_list = ((void*)0);
   for (i=0; i<NUM_EVENTS; i++)
   {
      st->event_rep[i].eEvent = -1;
      st->event_rep[i].next = st->event_list;
      st->event_list = st->event_rep+i;
   }
   ilclient_unlock_events(st);
   return st;
}

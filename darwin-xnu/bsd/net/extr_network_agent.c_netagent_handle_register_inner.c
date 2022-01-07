
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; int pending_triggers_list; scalar_t__ generation; int event_context; int event_handler; int control_unit; } ;
struct netagent_session {struct netagent_wrapper* wrapper; int event_context; int event_handler; int control_unit; } ;
typedef int errno_t ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct netagent_wrapper*,int ) ;
 int NETAGENT_FLAG_ACTIVE ;
 int NETAGENT_FLAG_REGISTERED ;
 int g_next_generation ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int master_chain ;
 int master_netagent_list ;
 int netagent_active_count ;
 int netagent_lock ;
 int netagent_registered_count ;

__attribute__((used)) static errno_t
netagent_handle_register_inner(struct netagent_session *session, struct netagent_wrapper *new_wrapper)
{
 lck_rw_lock_exclusive(&netagent_lock);

 new_wrapper->control_unit = session->control_unit;
 new_wrapper->event_handler = session->event_handler;
 new_wrapper->event_context = session->event_context;
 new_wrapper->generation = g_next_generation++;

 session->wrapper = new_wrapper;
 LIST_INSERT_HEAD(&master_netagent_list, new_wrapper, master_chain);
 LIST_INIT(&new_wrapper->pending_triggers_list);

 new_wrapper->netagent.netagent_flags |= NETAGENT_FLAG_REGISTERED;
 netagent_registered_count++;
 if (new_wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE) {
  netagent_active_count++;
 }

 lck_rw_done(&netagent_lock);

 return 0;
}

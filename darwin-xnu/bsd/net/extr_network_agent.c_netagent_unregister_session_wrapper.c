
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_2__ {int netagent_flags; int netagent_uuid; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent_session {struct netagent_wrapper* wrapper; } ;


 int FALSE ;
 int KEV_NETAGENT_UNREGISTERED ;
 int LIST_REMOVE (struct netagent_wrapper*,int ) ;
 int LOG_DEBUG ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_FLAG_ACTIVE ;
 int TRUE ;
 int ifnet_clear_netagent (int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int master_chain ;
 scalar_t__ netagent_active_count ;
 int netagent_free_wrapper (struct netagent_wrapper*) ;
 int netagent_lock ;
 int netagent_post_event (int ,int ,int) ;
 scalar_t__ netagent_registered_count ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
netagent_unregister_session_wrapper(struct netagent_session *session)
{
 bool unregistered = FALSE;
 uuid_t unregistered_uuid;
 struct netagent_wrapper *wrapper = ((void*)0);
 lck_rw_lock_exclusive(&netagent_lock);
 if (session != ((void*)0)) {
  wrapper = session->wrapper;
  if (wrapper != ((void*)0)) {
   if (netagent_registered_count > 0) {
    netagent_registered_count--;
   }
   if ((session->wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE) &&
    netagent_active_count > 0) {
    netagent_active_count--;
   }

   LIST_REMOVE(wrapper, master_chain);

   unregistered = TRUE;
   uuid_copy(unregistered_uuid, session->wrapper->netagent.netagent_uuid);

   netagent_free_wrapper(session->wrapper);
   session->wrapper = ((void*)0);
   NETAGENTLOG0(LOG_DEBUG, "Unregistered agent");
  }
 }
 lck_rw_done(&netagent_lock);

 if (unregistered) {
  ifnet_clear_netagent(unregistered_uuid);
  netagent_post_event(unregistered_uuid, KEV_NETAGENT_UNREGISTERED, TRUE);
 }
}

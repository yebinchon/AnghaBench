
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int kern_return_t ;
typedef TYPE_1__* coalition_t ;
typedef void* boolean_t ;
struct TYPE_6__ {size_t type; scalar_t__ active_count; int id; void* should_notify; void* notified; void* terminated; void* termrequested; scalar_t__ reaped; } ;


 size_t COALITION_TYPE_MAX ;
 void* FALSE ;
 int KERN_DEFAULT_SET ;
 int KERN_INVALID_NAME ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 void* TRUE ;
 int assert (int) ;
 int coalition_lock (TYPE_1__*) ;
 int coalition_notify_user (int ,scalar_t__) ;
 int coalition_unlock (TYPE_1__*) ;
 TYPE_1__** init_coalition ;

kern_return_t
coalition_request_terminate_internal(coalition_t coal)
{
 assert(coal->type >= 0 && coal->type <= COALITION_TYPE_MAX);

 if (coal == init_coalition[coal->type]) {
  return KERN_DEFAULT_SET;
 }

 coalition_lock(coal);

 if (coal->reaped) {
  coalition_unlock(coal);
  return KERN_INVALID_NAME;
 }

 if (coal->terminated || coal->termrequested) {
  coalition_unlock(coal);
  return KERN_TERMINATED;
 }

 coal->termrequested = TRUE;

 boolean_t do_notify = FALSE;
 uint64_t note_id = 0;
 uint32_t note_flags = 0;

 if (coal->active_count == 0) {






  assert(!coal->terminated);
  coal->terminated = TRUE;

  assert(!coal->notified);

  coal->notified = TRUE;



  do_notify = TRUE;

  note_id = coal->id;
  note_flags = 0;
 }

 coalition_unlock(coal);

 if (do_notify) {
  coalition_notify_user(note_id, note_flags);
 }

 return KERN_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
typedef int VCOS_STATUS_T ;
struct TYPE_8__ {void* list_pending; void* list_free; TYPE_1__* pool; } ;
struct TYPE_9__ {TYPE_2__ request; int timer; int event; int scheduling; int thread; } ;
struct TYPE_7__ {int link; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_CLOCK_PRIVATE_T ;
typedef scalar_t__ MMAL_BOOL_T ;


 unsigned int CLOCK_REQUEST_SLOTS ;
 int LOG_ERROR (char*,...) ;
 int MMAL_ENOSPC ;
 scalar_t__ MMAL_FALSE ;
 int MMAL_SUCCESS ;
 int MMAL_TRUE ;
 int VCOS_AFFINITY_MASK ;
 int VCOS_EINVAL ;
 int VCOS_SUCCESS ;
 scalar_t__ mmal_clock_timer_create (int *,TYPE_3__*) ;
 int mmal_clock_timer_destroy (int *) ;
 int mmal_clock_worker_thread ;
 void* mmal_list_create () ;
 int mmal_list_destroy (void*) ;
 int mmal_list_push_back (void*,int *) ;
 int vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_thread_create (int *,char*,int *,int ,TYPE_3__*) ;
 int vcos_thread_get_priority (int *) ;
 int vcos_thread_set_priority (int *,int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_clock_create_scheduling(MMAL_CLOCK_PRIVATE_T *private)
{
   unsigned int i;
   MMAL_BOOL_T timer_status = MMAL_FALSE;
   VCOS_STATUS_T event_status = VCOS_EINVAL;
   VCOS_UNSIGNED priority;

   timer_status = mmal_clock_timer_create(&private->timer, private);
   if (!timer_status)
   {
      LOG_ERROR("failed to create timer %p", private);
      goto error;
   }

   event_status = vcos_semaphore_create(&private->event, "mmal-clock sema", 0);
   if (event_status != VCOS_SUCCESS)
   {
      LOG_ERROR("failed to create event semaphore %d", event_status);
      goto error;
   }

   private->request.list_free = mmal_list_create();
   private->request.list_pending = mmal_list_create();
   if (!private->request.list_free || !private->request.list_pending)
   {
      LOG_ERROR("failed to create list %p %p", private->request.list_free, private->request.list_pending);
      goto error;
   }


   for (i = 0; i < CLOCK_REQUEST_SLOTS; ++i)
      mmal_list_push_back(private->request.list_free, &private->request.pool[i].link);

   if (vcos_thread_create(&private->thread, "mmal-clock thread", ((void*)0),
                          mmal_clock_worker_thread, private) != VCOS_SUCCESS)
   {
      LOG_ERROR("failed to create worker thread");
      goto error;
   }
   priority = vcos_thread_get_priority(&private->thread);
   vcos_thread_set_priority(&private->thread, 1 | (priority & VCOS_AFFINITY_MASK));

   private->scheduling = MMAL_TRUE;

   return MMAL_SUCCESS;

error:
   if (event_status == VCOS_SUCCESS) vcos_semaphore_delete(&private->event);
   if (timer_status) mmal_clock_timer_destroy(&private->timer);
   if (private->request.list_free) mmal_list_destroy(private->request.list_free);
   if (private->request.list_pending) mmal_list_destroy(private->request.list_pending);
   return MMAL_ENOSPC;
}

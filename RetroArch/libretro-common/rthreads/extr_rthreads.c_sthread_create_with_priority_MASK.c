#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread_data {void (* func ) (void*) ;int /*<<< orphan*/  id; int /*<<< orphan*/  thread; void* userdata; } ;
struct sched_param {int sched_priority; } ;
typedef  struct thread_data sthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCHED_RR ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sched_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread_data*) ; 
 int /*<<< orphan*/  thread_wrap ; 

sthread_t *FUNC10(void (*thread_func)(void*), void *userdata, int thread_priority)
{
#ifdef HAVE_THREAD_ATTR
   pthread_attr_t thread_attr;
   bool thread_attr_needed  = false;
#endif
   bool thread_created      = false;
   struct thread_data *data = NULL;
   sthread_t *thread        = (sthread_t*)FUNC1(1, sizeof(*thread));

   if (!thread)
      return NULL;

   data                     = (struct thread_data*)FUNC1(1, sizeof(*data));
   if (!data)
      goto error;

   data->func               = thread_func;
   data->userdata           = userdata;

#ifdef USE_WIN32_THREADS
   thread->thread           = CreateThread(NULL, 0, thread_wrap, data, 0, &thread->id);
   thread_created           = !!thread->thread;
#else

#ifdef HAVE_THREAD_ATTR
   pthread_attr_init(&thread_attr);

   if ( (thread_priority >= 1) && (thread_priority <= 100) )
   {
      struct sched_param sp;
      memset(&sp, 0, sizeof(struct sched_param));
      sp.sched_priority = thread_priority;
      pthread_attr_setschedpolicy(&thread_attr, SCHED_RR);
      pthread_attr_setschedparam(&thread_attr, &sp);

      thread_attr_needed = true;
   }
#endif

#if defined(VITA)
   pthread_attr_setstacksize(&thread_attr , 0x10000 );
   thread_attr_needed = true;
#endif

#ifdef HAVE_THREAD_ATTR
   if (thread_attr_needed)
      thread_created = pthread_create(&thread->id, &thread_attr, thread_wrap, data) == 0;
   else
#endif
      thread_created = FUNC9(&thread->id, NULL, thread_wrap, data) == 0;

#ifdef HAVE_THREAD_ATTR
   pthread_attr_destroy(&thread_attr);
#endif
#endif

   if (thread_created)
      return thread;

error:
   if (data)
      FUNC2(data);
   FUNC2(thread);
   return NULL;
}
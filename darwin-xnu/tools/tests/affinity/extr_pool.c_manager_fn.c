
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int setnum; TYPE_6__* stage; } ;
typedef TYPE_3__ worker_info_t ;
struct TYPE_13__ {long number; int tag; int isize; int data; } ;
typedef TYPE_4__ work_t ;
typedef int thread_policy_t ;
struct TYPE_14__ {int timeshare; } ;
typedef TYPE_5__ thread_extended_policy_data_t ;
struct TYPE_15__ {scalar_t__ stagenum; scalar_t__ work_todo; int name; TYPE_2__* output; int (* fn ) (int ,int ) ;TYPE_1__* input; } ;
typedef TYPE_6__ stage_info_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;
struct TYPE_11__ {int cnd; int mtx; scalar_t__ waiters; int queue; } ;
struct TYPE_10__ {int mtx; int queue; int waiters; int cnd; } ;


 int DBG (char*,int ,int,scalar_t__,...) ;
 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_4__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_4__*,int ) ;
 int THREAD_EXTENDED_POLICY ;
 int THREAD_EXTENDED_POLICY_COUNT ;
 scalar_t__ affinity ;
 int affinity_set (int) ;
 int barrier ;
 int fflush (int ) ;
 int funnel ;
 int getchar () ;
 int getpid () ;
 scalar_t__ halting ;
 int link ;
 int mach_absolute_time () ;
 int mach_thread_self () ;
 int printf (char*,int) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stdout ;
 int stub1 (int ,int ) ;
 scalar_t__ thread_policy_set (int ,int ,int ,int ) ;
 scalar_t__ threads ;
 scalar_t__ threads_ready ;
 int timer ;

void *
manager_fn(void *arg)
{
 worker_info_t *wp = (worker_info_t *) arg;
 stage_info_t *sp = wp->stage;
 boolean_t is_producer = (sp->stagenum == 0);
 long iteration = 0;
 int current_tag = 0;

 kern_return_t ret;
 thread_extended_policy_data_t epolicy;
 epolicy.timeshare = FALSE;
 ret = thread_policy_set(
   mach_thread_self(), THREAD_EXTENDED_POLICY,
   (thread_policy_t) &epolicy,
   THREAD_EXTENDED_POLICY_COUNT);
 if (ret != KERN_SUCCESS)
  printf("thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\n", ret);





 if (affinity && is_producer) {
  affinity_set(wp->setnum);
  current_tag = wp->setnum;
 }

 DBG("Starting %s %d, stage: %d\n", sp->name, wp->setnum, sp->stagenum);





 pthread_mutex_lock(&funnel);
 threads_ready++;
 if (threads_ready == threads) {
  pthread_mutex_unlock(&funnel);
  if (halting) {
   printf("  all threads ready for process %d, "
    "hit any key to start", getpid());
   fflush(stdout);
   (void) getchar();
  }
  pthread_cond_broadcast(&barrier);
  timer = mach_absolute_time();
 } else {
  pthread_cond_wait(&barrier, &funnel);
  pthread_mutex_unlock(&funnel);
 }

 do {
  work_t *workp;






  pthread_mutex_lock(&sp->input->mtx);
  while (1) {
   if (sp->work_todo == 0) {
    pthread_mutex_unlock(&sp->input->mtx);
    goto out;
   }
   workp = TAILQ_FIRST(&(sp->input->queue));
   if (workp != ((void*)0))
    break;
   DBG("    %s[%d,%d] todo %d waiting for buffer\n",
    sp->name, wp->setnum, sp->stagenum, sp->work_todo);
   sp->input->waiters++;
   pthread_cond_wait(&sp->input->cnd, &sp->input->mtx);
   sp->input->waiters--;
  }
  TAILQ_REMOVE(&(sp->input->queue), workp, link);
  iteration = sp->work_todo--;
  pthread_mutex_unlock(&sp->input->mtx);

  if (is_producer) {
   workp->number = iteration;
   workp->tag = wp->setnum;
  } else {
   if (affinity && current_tag != workp->tag) {
    affinity_set(workp->tag);
    current_tag = workp->tag;
   }
  }

  DBG("  %s[%d,%d] todo %d work %p data %p\n",
   sp->name, wp->setnum, sp->stagenum, iteration, workp, workp->data);


  (void) sp->fn(workp->data, workp->isize);





  pthread_mutex_lock(&sp->output->mtx);
  TAILQ_INSERT_TAIL(&(sp->output->queue), workp, link);
  if (sp->output->waiters) {
   DBG("    %s[%d,%d] todo %d signaling work\n",
    sp->name, wp->setnum, sp->stagenum, iteration);
   pthread_cond_signal(&sp->output->cnd);
  }
  pthread_mutex_unlock(&sp->output->mtx);

 } while (1);

out:
 pthread_cond_broadcast(&sp->output->cnd);

 DBG("Ending %s[%d,%d]\n", sp->name, wp->setnum, sp->stagenum);

 return (void *) iteration;
}

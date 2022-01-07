
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int errno_t ;


 int EX_OSERR ;
 int SCHED_RR ;
 int assert (int *) ;
 int churn_thread ;
 int errc (int ,int ,char*) ;
 int g_churn_count ;
 scalar_t__ g_churn_pri ;
 int * g_churn_threads ;
 int g_numcpus ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_attr_setschedpolicy (int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 scalar_t__ valloc (int) ;

__attribute__((used)) static void
create_churn_threads()
{
 if (g_churn_count == 0)
  g_churn_count = g_numcpus - 1;

 errno_t err;

 struct sched_param param = { .sched_priority = (int)g_churn_pri };
 pthread_attr_t attr;


 g_churn_threads = (pthread_t*) valloc(sizeof(pthread_t) * g_churn_count);
 assert(g_churn_threads);

 if ((err = pthread_attr_init(&attr)))
  errc(EX_OSERR, err, "pthread_attr_init");

 if ((err = pthread_attr_setschedparam(&attr, &param)))
  errc(EX_OSERR, err, "pthread_attr_setschedparam");

 if ((err = pthread_attr_setschedpolicy(&attr, SCHED_RR)))
  errc(EX_OSERR, err, "pthread_attr_setschedpolicy");

 for (uint32_t i = 0 ; i < g_churn_count ; i++) {
  pthread_t new_thread;

  if ((err = pthread_create(&new_thread, &attr, churn_thread, ((void*)0))))
   errc(EX_OSERR, err, "pthread_create");
  g_churn_threads[i] = new_thread;
 }

 if ((err = pthread_attr_destroy(&attr)))
  errc(EX_OSERR, err, "pthread_attr_destroy");
}

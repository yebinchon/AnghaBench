
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sigset_t ;
typedef TYPE_2__* pthread_attr_t ;
struct TYPE_4__ {int sched_priority; } ;
struct TYPE_5__ {int valid; int contentionscope; int inheritsched; TYPE_1__ param; int sigmask; int detachstate; int * stackaddr; scalar_t__ stacksize; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_CREATE_JOINABLE ;
 int PTHREAD_EXPLICIT_SCHED ;
 int PTHREAD_SCOPE_SYSTEM ;
 int PTW32_ATTR_VALID ;
 int THREAD_PRIORITY_NORMAL ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

int
pthread_attr_init (pthread_attr_t * attr)
{
  pthread_attr_t attr_result;

  if (attr == ((void*)0))
    {

      return EINVAL;
    }

  attr_result = (pthread_attr_t) malloc (sizeof (*attr_result));

  if (attr_result == ((void*)0))
    {
      return ENOMEM;
    }
  attr_result->detachstate = PTHREAD_CREATE_JOINABLE;
  attr_result->param.sched_priority = THREAD_PRIORITY_NORMAL;
  attr_result->inheritsched = PTHREAD_EXPLICIT_SCHED;
  attr_result->contentionscope = PTHREAD_SCOPE_SYSTEM;

  attr_result->valid = PTW32_ATTR_VALID;

  *attr = attr_result;

  return 0;
}

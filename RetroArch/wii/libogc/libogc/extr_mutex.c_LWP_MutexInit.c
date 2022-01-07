
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s32 ;
typedef scalar_t__ mutex_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ object; int mutex; } ;
typedef TYPE_2__ mutex_st ;
struct TYPE_8__ {int prioceil; int onlyownerrelease; int nest_behavior; int mode; } ;
typedef TYPE_3__ lwp_mutex_attr ;


 int LWP_MUTEX_FIFO ;
 int LWP_MUTEX_NEST_ACQUIRE ;
 int LWP_MUTEX_NEST_ERROR ;
 int LWP_MUTEX_UNLOCKED ;
 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_MUTEX ;
 int TRUE ;
 TYPE_2__* __lwp_mutex_allocate () ;
 int __lwp_mutex_initialize (int *,TYPE_3__*,int ) ;
 int __lwp_thread_dispatchunnest () ;

s32 LWP_MutexInit(mutex_t *mutex,bool use_recursive)
{
 lwp_mutex_attr attr;
 mutex_st *ret;

 if(!mutex) return -1;

 ret = __lwp_mutex_allocate();
 if(!ret) return -1;

 attr.mode = LWP_MUTEX_FIFO;
 attr.nest_behavior = use_recursive?LWP_MUTEX_NEST_ACQUIRE:LWP_MUTEX_NEST_ERROR;
 attr.onlyownerrelease = TRUE;
 attr.prioceil = 1;
 __lwp_mutex_initialize(&ret->mutex,&attr,LWP_MUTEX_UNLOCKED);

 *mutex = (mutex_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_MUTEX)|LWP_OBJMASKID(ret->object.id));
 __lwp_thread_dispatchunnest();
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int mqmsg_t ;
typedef scalar_t__ mqbox_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ object; int mqueue; } ;
typedef TYPE_2__ mqbox_st ;
struct TYPE_9__ {int mode; } ;
typedef TYPE_3__ mq_attr ;


 int LWP_MQ_FIFO ;
 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_MBOX ;
 int MQ_ERROR_SUCCESSFUL ;
 int MQ_ERROR_TOOMANY ;
 TYPE_2__* __lwp_mqbox_allocate () ;
 int __lwp_mqbox_free (TYPE_2__*) ;
 int __lwp_thread_dispatchenable () ;
 int __lwpmq_initialize (int *,TYPE_3__*,int ,int) ;

s32 MQ_Init(mqbox_t *mqbox,u32 count)
{
 mq_attr attr;
 mqbox_st *ret = ((void*)0);

 if(!mqbox) return -1;

 ret = __lwp_mqbox_allocate();
 if(!ret) return MQ_ERROR_TOOMANY;

 attr.mode = LWP_MQ_FIFO;
 if(!__lwpmq_initialize(&ret->mqueue,&attr,count,sizeof(mqmsg_t))) {
  __lwp_mqbox_free(ret);
  __lwp_thread_dispatchenable();
  return MQ_ERROR_TOOMANY;
 }

 *mqbox = (mqbox_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_MBOX)|LWP_OBJMASKID(ret->object.id));
 __lwp_thread_dispatchenable();
 return MQ_ERROR_SUCCESSFUL;
}

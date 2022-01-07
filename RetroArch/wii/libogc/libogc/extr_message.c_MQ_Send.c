
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int mqmsg_t ;
typedef int mqbox_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ object; int mqueue; } ;
typedef TYPE_2__ mqbox_st ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LWP_MQ_SEND_REQUEST ;
 scalar_t__ LWP_MQ_STATUS_SUCCESSFUL ;
 int LWP_THREADQ_NOTIMEOUT ;
 scalar_t__ MQ_MSG_BLOCK ;
 scalar_t__ TRUE ;
 TYPE_2__* __lwp_mqbox_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 scalar_t__ __lwpmq_submit (int *,int ,void*,int,int ,scalar_t__,int ) ;

BOOL MQ_Send(mqbox_t mqbox,mqmsg_t msg,u32 flags)
{
 BOOL ret;
 mqbox_st *mbox;
 u32 wait = (flags==MQ_MSG_BLOCK)?TRUE:FALSE;

 mbox = __lwp_mqbox_open(mqbox);
 if(!mbox) return FALSE;

 ret = FALSE;
 if(__lwpmq_submit(&mbox->mqueue,mbox->object.id,(void*)&msg,sizeof(mqmsg_t),LWP_MQ_SEND_REQUEST,wait,LWP_THREADQ_NOTIMEOUT)==LWP_MQ_STATUS_SUCCESSFUL) ret = TRUE;
 __lwp_thread_dispatchenable();

 return ret;
}

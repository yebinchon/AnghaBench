
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int max_pendingmsgs; int max_msgsize; int wait_queue; int pending_msgs; int * msq_buffers; int inactive_msgs; scalar_t__ num_pendingmsgs; } ;
typedef TYPE_1__ mq_cntrl ;
typedef int mq_buffercntrl ;
typedef int mq_buffer ;
typedef int mq_attr ;


 int LWP_MQ_STATUS_TIMEOUT ;
 int LWP_STATES_WAITING_FOR_MESSAGE ;
 int LWP_THREADQ_MODEFIFO ;
 int LWP_THREADQ_MODEPRIORITY ;
 int __lwp_queue_init_empty (int *) ;
 int __lwp_queue_initialize (int *,int *,int,int) ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;
 scalar_t__ __lwp_wkspace_allocate (int) ;
 scalar_t__ __lwpmq_is_priority (int *) ;
 int __lwpmq_set_notify (TYPE_1__*,int *,int *) ;
 int printf (char*,TYPE_1__*,int *,int,int) ;

u32 __lwpmq_initialize(mq_cntrl *mqueue,mq_attr *attrs,u32 max_pendingmsgs,u32 max_msgsize)
{
 u32 alloc_msgsize;
 u32 buffering_req;




 mqueue->max_pendingmsgs = max_pendingmsgs;
 mqueue->num_pendingmsgs = 0;
 mqueue->max_msgsize = max_msgsize;
 __lwpmq_set_notify(mqueue,((void*)0),((void*)0));

 alloc_msgsize = max_msgsize;
 if(alloc_msgsize&(sizeof(u32)-1))
  alloc_msgsize = (alloc_msgsize+sizeof(u32))&~(sizeof(u32)-1);

 buffering_req = max_pendingmsgs*(alloc_msgsize+sizeof(mq_buffercntrl));
 mqueue->msq_buffers = (mq_buffer*)__lwp_wkspace_allocate(buffering_req);

 if(!mqueue->msq_buffers) return 0;

 __lwp_queue_initialize(&mqueue->inactive_msgs,mqueue->msq_buffers,max_pendingmsgs,(alloc_msgsize+sizeof(mq_buffercntrl)));
 __lwp_queue_init_empty(&mqueue->pending_msgs);
 __lwp_threadqueue_init(&mqueue->wait_queue,__lwpmq_is_priority(attrs)?LWP_THREADQ_MODEPRIORITY:LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_MESSAGE,LWP_MQ_STATUS_TIMEOUT);

 return 1;
}

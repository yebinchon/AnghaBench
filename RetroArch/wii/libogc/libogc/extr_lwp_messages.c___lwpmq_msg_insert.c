
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_17__ {TYPE_4__* first; } ;
struct TYPE_15__ {int num_pendingmsgs; int notify_arg; int (* notify_handler ) (int ) ;TYPE_3__ pending_msgs; } ;
typedef TYPE_1__ mq_cntrl ;
struct TYPE_16__ {int prio; int node; } ;
typedef TYPE_2__ mq_buffercntrl ;
typedef TYPE_3__ lwp_queue ;
struct TYPE_18__ {int prev; struct TYPE_18__* next; } ;
typedef TYPE_4__ lwp_node ;




 int __lwp_queue_insert (int ,int *) ;
 int __lwp_queue_istail (TYPE_3__*,TYPE_4__*) ;
 int __lwpmq_msg_append (TYPE_1__*,TYPE_2__*) ;
 int __lwpmq_msg_prepend (TYPE_1__*,TYPE_2__*) ;
 int printf (char*,TYPE_1__*,TYPE_2__*,int) ;
 int stub1 (int ) ;

void __lwpmq_msg_insert(mq_cntrl *mqueue,mq_buffercntrl *msg,u32 type)
{
 ++mqueue->num_pendingmsgs;
 msg->prio = type;





 switch(type) {
  case 129:
   __lwpmq_msg_append(mqueue,msg);
   break;
  case 128:
   __lwpmq_msg_prepend(mqueue,msg);
   break;
  default:
  {
   mq_buffercntrl *tmsg;
   lwp_node *node;
   lwp_queue *header;

   header = &mqueue->pending_msgs;
   node = header->first;
   while(!__lwp_queue_istail(header,node)) {
    tmsg = (mq_buffercntrl*)node;
    if(tmsg->prio<=msg->prio) {
     node = node->next;
     continue;
    }
    break;
   }
   __lwp_queue_insert(node->prev,&msg->node);
  }
  break;
 }

 if(mqueue->num_pendingmsgs==1 && mqueue->notify_handler)
  mqueue->notify_handler(mqueue->notify_arg);
}

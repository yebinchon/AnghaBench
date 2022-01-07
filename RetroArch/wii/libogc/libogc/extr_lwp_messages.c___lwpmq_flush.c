
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ num_pendingmsgs; } ;
typedef TYPE_1__ mq_cntrl ;


 int __lwpmq_flush_support (TYPE_1__*) ;

u32 __lwpmq_flush(mq_cntrl *mqueue)
{
 if(mqueue->num_pendingmsgs!=0)
  return __lwpmq_flush_support(mqueue);
 else
  return 0;
}

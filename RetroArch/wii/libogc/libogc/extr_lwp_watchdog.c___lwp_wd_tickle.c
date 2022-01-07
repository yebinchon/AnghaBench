
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fire; int start; int usr_data; int (* routine ) (int ) ;} ;
typedef TYPE_1__ wd_cntrl ;
typedef int u64 ;
typedef int u32 ;
typedef int s64 ;
typedef int lwp_queue ;






 scalar_t__ __lwp_queue_isempty (int *) ;
 TYPE_1__* __lwp_wd_first (int *) ;
 int __lwp_wd_remove (int *,TYPE_1__*) ;
 int __lwp_wd_reset (TYPE_1__*) ;
 int diff_ticks (int,int) ;
 int gettime () ;
 int printf (char*,TYPE_1__*,int,int,int,int,int,int,int,int) ;
 int stub1 (int ) ;

void __lwp_wd_tickle(lwp_queue *queue)
{
 wd_cntrl *wd;
 u64 now;
 s64 diff;

 if(__lwp_queue_isempty(queue)) return;

 wd = __lwp_wd_first(queue);
 now = gettime();
 diff = diff_ticks(now,wd->fire);



 if(diff<=0) {
  do {
   switch(__lwp_wd_remove(queue,wd)) {
    case 131:
     wd->routine(wd->usr_data);
     break;
    case 130:
     break;
    case 129:
     break;
    case 128:
     break;
   }
   wd = __lwp_wd_first(queue);
  } while(!__lwp_queue_isempty(queue) && wd->fire==0);
 } else {
  __lwp_wd_reset(wd);
 }
}

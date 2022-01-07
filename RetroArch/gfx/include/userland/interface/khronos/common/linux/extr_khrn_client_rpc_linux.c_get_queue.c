
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCHIU_QUEUE_T ;
struct TYPE_3__ {scalar_t__ high_priority; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 int khhn_queue ;
 int khrn_queue ;

__attribute__((used)) static VCHIU_QUEUE_T *get_queue(CLIENT_THREAD_STATE_T *thread)
{
   return thread->high_priority ? &khhn_queue : &khrn_queue;
}

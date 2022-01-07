
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_5__ {scalar_t__ rwlock_count; } ;


 int lck_rw_clear_promotion (TYPE_1__*,int ) ;
 int panic (char*,scalar_t__,TYPE_1__*) ;

void
lck_rw_clear_promotions_x86(thread_t thread)
{





 thread->rwlock_count = 0;
 lck_rw_clear_promotion(thread, 0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int blocks; } ;
typedef TYPE_1__ tsd_init_head_t ;
typedef int tsd_init_block_t ;


 int link ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int ql_remove (int *,int *,int ) ;

void
tsd_init_finish(tsd_init_head_t *head, tsd_init_block_t *block)
{

 malloc_mutex_lock(&head->lock);
 ql_remove(&head->blocks, block, link);
 malloc_mutex_unlock(&head->lock);
}

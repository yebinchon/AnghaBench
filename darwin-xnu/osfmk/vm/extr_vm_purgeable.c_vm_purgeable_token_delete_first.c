
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int token_idx_t ;
typedef int purgeable_q_t ;
struct TYPE_2__ {int next; scalar_t__ prev; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int token_free_idx ;
 TYPE_1__* tokens ;
 int vm_page_queue_lock ;
 int vm_purgeable_token_remove_first (int ) ;

void
vm_purgeable_token_delete_first(purgeable_q_t queue)
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 token_idx_t token = vm_purgeable_token_remove_first(queue);

 if (token) {

  tokens[token].next = token_free_idx;
  tokens[token].prev = 0;
  token_free_idx = token;
 }
}

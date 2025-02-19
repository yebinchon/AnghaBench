
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t token_idx_t ;
typedef TYPE_1__* purgeable_q_t ;
struct TYPE_6__ {scalar_t__ count; size_t next; scalar_t__ prev; } ;
struct TYPE_5__ {size_t token_q_head; int debug_count_tokens; scalar_t__ token_q_tail; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int assert (int) ;
 scalar_t__ available_for_purge ;
 size_t token_free_idx ;
 TYPE_4__* tokens ;
 int vm_page_queue_lock ;
 int vm_purgeable_token_check_queue (TYPE_1__*) ;

__attribute__((used)) static void
vm_purgeable_token_remove_ripe(purgeable_q_t queue)
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 assert(queue->token_q_head && tokens[queue->token_q_head].count == 0);

 token_idx_t new_head = tokens[queue->token_q_head].next;
 tokens[queue->token_q_head].next = token_free_idx;
 tokens[queue->token_q_head].prev = 0;
 token_free_idx = queue->token_q_head;
 queue->token_q_head = new_head;
 tokens[new_head].prev = 0;
 if (new_head == 0)
  queue->token_q_tail = 0;






 available_for_purge--;
 assert(available_for_purge >= 0);
}

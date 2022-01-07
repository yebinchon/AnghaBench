
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int token_idx_t ;
typedef TYPE_1__* purgeable_q_t ;
struct TYPE_6__ {scalar_t__ next; int prev; int count; } ;
struct TYPE_5__ {int token_q_tail; int token_q_head; int token_q_unripe; int type; int debug_count_tokens; int new_pages; } ;


 int DBG_MACH_VM ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,int ,int ,scalar_t__,int ) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MACHDBG_CODE (int ,int ) ;
 int TOKEN_DELETE ;
 int assert (int) ;
 scalar_t__ available_for_purge ;
 int token_new_pagecount ;
 TYPE_4__* tokens ;
 int vm_page_queue_lock ;
 int vm_purgeable_token_check_queue (TYPE_1__*) ;

__attribute__((used)) static token_idx_t
vm_purgeable_token_remove_last(purgeable_q_t queue)
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);

 token_idx_t token;
 token = queue->token_q_tail;

 assert(token);

 if (token) {
  assert(queue->token_q_head);

  if (queue->token_q_tail == queue->token_q_head)
   assert(tokens[token].next == 0);

  if (queue->token_q_unripe == 0) {

   available_for_purge--;
   assert(available_for_purge >= 0);
  } else if (queue->token_q_unripe == token) {

   queue->token_q_unripe = 0;
  }

  if (token == queue->token_q_head) {

   queue->token_q_head = 0;
   queue->token_q_tail = 0;
  } else {
   token_idx_t new_tail;

   new_tail = tokens[token].prev;

   assert(new_tail);
   assert(tokens[new_tail].next == token);

   queue->token_q_tail = new_tail;
   tokens[new_tail].next = 0;
  }

  queue->new_pages += tokens[token].count;
 }
 return token;
}

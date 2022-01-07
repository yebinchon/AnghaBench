
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* purgeable_q_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ count; size_t next; } ;
struct TYPE_5__ {scalar_t__ new_pages; int token_q_unripe; size_t token_q_head; int type; } ;


 int DBG_MACH_VM ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,scalar_t__,int ,int ,int ) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MACHDBG_CODE (int ,int ) ;
 int PURGEABLE_Q_TYPE_FIFO ;
 int PURGEABLE_Q_TYPE_MAX ;
 scalar_t__ TOKEN_COUNT_MAX ;
 int TOKEN_NEW_PAGECOUNT_MAX ;
 int TOKEN_RIPEN ;
 int assert (int) ;
 int available_for_purge ;
 TYPE_1__* purgeable_queues ;
 int token_new_pagecount ;
 TYPE_3__* tokens ;
 int vm_page_queue_lock ;
 int vm_purgeable_token_check_queue (TYPE_1__*) ;

void
vm_purgeable_q_advance_all()
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);



 int i;
 if(token_new_pagecount > (TOKEN_NEW_PAGECOUNT_MAX >> 1))
 {
  for (i = PURGEABLE_Q_TYPE_FIFO; i < PURGEABLE_Q_TYPE_MAX; i++) {
   int64_t pages = purgeable_queues[i].new_pages += token_new_pagecount;
   assert(pages >= 0);
   assert(pages <= TOKEN_COUNT_MAX);
   purgeable_queues[i].new_pages = (int32_t) pages;
   assert(purgeable_queues[i].new_pages == pages);
  }
  token_new_pagecount = 0;
 }
 for (i = PURGEABLE_Q_TYPE_FIFO; i < PURGEABLE_Q_TYPE_MAX; i++) {
  purgeable_q_t queue = &purgeable_queues[i];
  uint32_t num_pages = 1;


  while (queue->token_q_unripe) {
   if (tokens[queue->token_q_unripe].count && num_pages)
   {
    tokens[queue->token_q_unripe].count -= 1;
    num_pages -= 1;
   }

   if (tokens[queue->token_q_unripe].count == 0) {
    queue->token_q_unripe = tokens[queue->token_q_unripe].next;
    available_for_purge++;
    KERNEL_DEBUG_CONSTANT((MACHDBG_CODE(DBG_MACH_VM, TOKEN_RIPEN)),
            queue->type,
            tokens[queue->token_q_head].count,

            0,
            available_for_purge,
            0);
    continue;

   }
   if (num_pages == 0)
    break;

  }







  if (!queue->token_q_unripe) {
   queue->new_pages -= num_pages;
   assert((int32_t) token_new_pagecount + queue->new_pages >= 0);
  }



 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef size_t token_idx_t ;
struct token {int next; scalar_t__ count; size_t prev; } ;
typedef TYPE_1__* purgeable_q_t ;
typedef scalar_t__ kern_return_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int event_t ;
typedef enum purgeable_q_type { ____Placeholder_purgeable_q_type } purgeable_q_type ;
struct TYPE_6__ {int new_pages; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ new_pages; size_t token_q_tail; size_t token_q_head; size_t token_q_unripe; int debug_count_tokens; } ;


 int DBG_MACH_VM ;
 int KERNEL_DEBUG_CONSTANT (int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ KERN_ABORTED ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LCK_SLEEP_DEFAULT ;
 int MACHDBG_CODE (int ,int ) ;
 int PAGE_SIZE ;
 size_t PURGEABLE_Q_TYPE_FIFO ;
 size_t PURGEABLE_Q_TYPE_LIFO ;
 int PURGEABLE_Q_TYPE_MAX ;
 scalar_t__ PURGEABLE_Q_TYPE_OBSOLETE ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_UNINT ;
 int TOKEN_ADD ;
 int TOKEN_COUNT_MAX ;
 int VM_KERN_MEMORY_OSFMK ;
 int assert (int) ;
 int available_for_purge ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,int *,int,int ) ;
 int kmem_free (int ,int ,int) ;
 scalar_t__ kmem_realloc (int ,int ,int,int *,int,int ) ;
 scalar_t__ lck_mtx_sleep (int *,int ,int ,int ) ;
 TYPE_2__* purgeable_queues ;
 int thread_wakeup (int ) ;
 int token_free_idx ;
 scalar_t__ token_init_idx ;
 int token_new_pagecount ;
 int token_q_allocating ;
 int token_q_cur_size ;
 scalar_t__ token_q_max_cnt ;
 struct token* tokens ;
 int vm_page_lock_queues () ;
 int vm_page_queue_lock ;
 int vm_page_unlock_queues () ;
 int vm_purgeable_token_check_queue (TYPE_2__*) ;

kern_return_t
vm_purgeable_token_add(purgeable_q_t queue)
{
 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);


 token_idx_t token;
 enum purgeable_q_type i;

find_available_token:

 if (token_free_idx) {
  token = token_free_idx;
  token_free_idx = tokens[token_free_idx].next;
 } else if (token_init_idx < token_q_max_cnt) {
  token = token_init_idx;
  token_init_idx++;
 } else {

  while(token_q_allocating) {
   wait_result_t res = lck_mtx_sleep(&vm_page_queue_lock,
         LCK_SLEEP_DEFAULT,
         (event_t)&token_q_allocating,
         THREAD_UNINT);
   if(res != THREAD_AWAKENED) return KERN_ABORTED;
  };


  if(token_init_idx < token_q_max_cnt)
   goto find_available_token;


  token_q_allocating = 1;


  vm_page_unlock_queues();

  struct token *new_loc;
  vm_size_t alloc_size = token_q_cur_size + PAGE_SIZE;
  kern_return_t result;

  if (alloc_size / sizeof (struct token) > TOKEN_COUNT_MAX) {
   result = KERN_RESOURCE_SHORTAGE;
  } else {
   if (token_q_cur_size) {
    result = kmem_realloc(kernel_map,
            (vm_offset_t) tokens,
            token_q_cur_size,
            (vm_offset_t *) &new_loc,
            alloc_size, VM_KERN_MEMORY_OSFMK);
   } else {
    result = kmem_alloc(kernel_map,
          (vm_offset_t *) &new_loc,
          alloc_size, VM_KERN_MEMORY_OSFMK);
   }
  }

  vm_page_lock_queues();

  if (result) {

   token_q_allocating = 0;
   thread_wakeup((event_t)&token_q_allocating);
   return result;
  }



  struct token *old_tokens=tokens;
  tokens=new_loc;
  vm_size_t old_token_q_cur_size=token_q_cur_size;
  token_q_cur_size=alloc_size;
  token_q_max_cnt = (token_idx_t) (token_q_cur_size /
       sizeof(struct token));
  assert (token_init_idx < token_q_max_cnt);

  if (old_token_q_cur_size) {
   vm_page_unlock_queues();

   kmem_free(kernel_map, (vm_offset_t)old_tokens, old_token_q_cur_size);
   vm_page_lock_queues();
  }


  token_q_allocating = 0;
  thread_wakeup((event_t)&token_q_allocating);

  goto find_available_token;
 }

 assert (token);





 for (i = PURGEABLE_Q_TYPE_FIFO; i < PURGEABLE_Q_TYPE_MAX; i++) {
  int64_t pages = purgeable_queues[i].new_pages += token_new_pagecount;
  assert(pages >= 0);
  assert(pages <= TOKEN_COUNT_MAX);
  purgeable_queues[i].new_pages = (int32_t) pages;
  assert(purgeable_queues[i].new_pages == pages);
 }
 token_new_pagecount = 0;


 if (queue->type != PURGEABLE_Q_TYPE_OBSOLETE)
  tokens[token].count = queue->new_pages;
 else
  tokens[token].count = 0;

 queue->new_pages = 0;


 tokens[token].next = 0;
 if (queue->token_q_tail == 0) {
  assert(queue->token_q_head == 0 && queue->token_q_unripe == 0);
  queue->token_q_head = token;
  tokens[token].prev = 0;
 } else {
  tokens[queue->token_q_tail].next = token;
  tokens[token].prev = queue->token_q_tail;
 }
 if (queue->token_q_unripe == 0) {

  if (tokens[token].count > 0)
   queue->token_q_unripe = token;
  else
   available_for_purge++;

 }
 queue->token_q_tail = token;
 return KERN_SUCCESS;
}

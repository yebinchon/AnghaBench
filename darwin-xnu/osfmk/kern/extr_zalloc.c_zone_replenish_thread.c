
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* event_t ;
struct TYPE_10__ {int options; } ;
struct TYPE_9__ {int zone_valid; int prio_refill_watermark; int cur_size; int count; int elem_size; scalar_t__ doing_alloc_without_vm_priv; scalar_t__ doing_alloc_with_vm_priv; scalar_t__ async_prio_refill; int zone_replenish_thread; scalar_t__ zone_replenishing; scalar_t__ noencrypt; int alloc_size; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_NO_SPACE ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_NOENCRYPT ;
 int KMA_NOPAGEWAIT ;
 int NSEC_PER_USEC ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int TH_OPT_VMPRIV ;
 scalar_t__ TRUE ;
 int VM_KERN_MEMORY_ZONE ;
 int VM_PAGE_WAIT () ;
 int assert (int) ;
 int assert_wait (int *,int ) ;
 int assert_wait_timeout (int *,int ,int,int) ;
 TYPE_8__* current_thread () ;
 scalar_t__ is_zone_map_nearing_exhaustion () ;
 int kernel_map ;
 scalar_t__ kernel_memory_allocate (int ,int *,int ,int ,int,int ) ;
 int lock_zone (TYPE_1__*) ;
 int round_page (int) ;
 int thread_block (int ) ;
 int thread_wakeup (TYPE_1__*) ;
 int unlock_zone (TYPE_1__*) ;
 int vm_pageout_garbage_collect ;
 scalar_t__ vm_pool_low () ;
 int zcram (TYPE_1__*,int ,int ) ;
 int zone_map ;
 int zone_replenish_loops ;
 int zone_replenish_wakeups ;

__attribute__((used)) __attribute__((noreturn))
static void
zone_replenish_thread(zone_t z)
{
 vm_size_t free_size;
 current_thread()->options |= TH_OPT_VMPRIV;

 for (;;) {
  lock_zone(z);
  assert(z->zone_valid);
  z->zone_replenishing = TRUE;
  assert(z->prio_refill_watermark != 0);
  while ((free_size = (z->cur_size - (z->count * z->elem_size))) < (z->prio_refill_watermark * z->elem_size)) {
   assert(z->doing_alloc_without_vm_priv == FALSE);
   assert(z->doing_alloc_with_vm_priv == FALSE);
   assert(z->async_prio_refill == TRUE);

   unlock_zone(z);
   int zflags = KMA_KOBJECT|KMA_NOPAGEWAIT;
   vm_offset_t space, alloc_size;
   kern_return_t kr;

   if (vm_pool_low())
    alloc_size = round_page(z->elem_size);
   else
    alloc_size = z->alloc_size;

   if (z->noencrypt)
    zflags |= KMA_NOENCRYPT;


   if (is_zone_map_nearing_exhaustion()) {
    thread_wakeup((event_t) &vm_pageout_garbage_collect);
   }

   kr = kernel_memory_allocate(zone_map, &space, alloc_size, 0, zflags, VM_KERN_MEMORY_ZONE);

   if (kr == KERN_SUCCESS) {
    zcram(z, space, alloc_size);
   } else if (kr == KERN_RESOURCE_SHORTAGE) {
    VM_PAGE_WAIT();
   } else if (kr == KERN_NO_SPACE) {
    kr = kernel_memory_allocate(kernel_map, &space, alloc_size, 0, zflags, VM_KERN_MEMORY_ZONE);
    if (kr == KERN_SUCCESS) {
     zcram(z, space, alloc_size);
    } else {
     assert_wait_timeout(&z->zone_replenish_thread, THREAD_UNINT, 1, 100 * NSEC_PER_USEC);
     thread_block(THREAD_CONTINUE_NULL);
    }
   }

   lock_zone(z);
   assert(z->zone_valid);
   zone_replenish_loops++;
  }

  z->zone_replenishing = FALSE;



  thread_wakeup(z);

  assert_wait(&z->zone_replenish_thread, THREAD_UNINT);
  unlock_zone(z);
  thread_block(THREAD_CONTINUE_NULL);
  zone_replenish_wakeups++;
 }
}

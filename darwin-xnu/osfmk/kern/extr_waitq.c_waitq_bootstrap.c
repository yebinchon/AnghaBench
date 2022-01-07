
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int tmp32 ;
struct wq_stats {int dummy; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 int DEFAULT_MIN_FREE_TABLE_ELEM ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_NOPAGEWAIT ;
 int P2ROUNDUP (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 int ROUNDDOWN (int,int) ;
 int SYNC_POLICY_DISABLE_IRQ ;
 int SYNC_POLICY_FIFO ;
 scalar_t__ TRUE ;
 int VM_KERN_MEMORY_WAITQ ;
 int WAITQ_SET_MAX ;
 int Z_NOENCRYPT ;
 int assert (int) ;
 int g_min_free_table_elem ;
 int g_num_waitqs ;
 int g_waitq_stats ;
 int * global_waitqs ;
 int kernel_map ;
 scalar_t__ kernel_memory_allocate (int ,int *,int,int ,int,int ) ;
 int memset (int ,int ,int) ;
 int panic (char*,scalar_t__,int) ;
 int waitq_hash_size () ;
 int waitq_init (int *,int) ;
 int waitq_set_zone ;
 int wqdbg (char*,int,...) ;
 int wql_init () ;
 int wqp_init () ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,scalar_t__) ;

void waitq_bootstrap(void)
{
 kern_return_t kret;
 uint32_t whsize, qsz, tmp32;

 g_min_free_table_elem = DEFAULT_MIN_FREE_TABLE_ELEM;
 if (PE_parse_boot_argn("wqt_min_free", &tmp32, sizeof(tmp32)) == TRUE)
  g_min_free_table_elem = tmp32;
 wqdbg("Minimum free table elements: %d", tmp32);





 whsize = waitq_hash_size();


 qsz = sizeof(struct waitq);
 whsize = ROUNDDOWN(whsize, qsz);
 g_num_waitqs = whsize / qsz;





 for (uint32_t i = 0; i < 31; i++) {
  uint32_t bit = (1 << i);
  if ((g_num_waitqs & bit) == g_num_waitqs)
   break;
  g_num_waitqs &= ~bit;
 }
 assert(g_num_waitqs > 0);


 whsize = P2ROUNDUP(g_num_waitqs * qsz, PAGE_SIZE);

 wqdbg("allocating %d global queues  (%d bytes)", g_num_waitqs, whsize);
 kret = kernel_memory_allocate(kernel_map, (vm_offset_t *)&global_waitqs,
          whsize, 0, KMA_KOBJECT|KMA_NOPAGEWAIT, VM_KERN_MEMORY_WAITQ);
 if (kret != KERN_SUCCESS || global_waitqs == ((void*)0))
  panic("kernel_memory_allocate() failed to alloc global_waitqs"
        ", error: %d, whsize: 0x%x", kret, whsize);
 for (uint32_t i = 0; i < g_num_waitqs; i++) {
  waitq_init(&global_waitqs[i], SYNC_POLICY_FIFO|SYNC_POLICY_DISABLE_IRQ);
 }

 waitq_set_zone = zinit(sizeof(struct waitq_set),
          WAITQ_SET_MAX * sizeof(struct waitq_set),
          sizeof(struct waitq_set),
          "waitq sets");
 zone_change(waitq_set_zone, Z_NOENCRYPT, TRUE);


 wql_init();


 wqp_init();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int console_buf_t ;
typedef int UInt32 ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ buffer; scalar_t__ write_ptr; scalar_t__ read_ptr; scalar_t__ used; } ;


 int CPU_BUF_FREE_HEX ;
 int KERN_CONSOLE_BUF_SIZE ;
 int KERN_CONSOLE_RING_SIZE ;
 int KERN_SUCCESS ;
 int MAX_CPU_SLOTS ;
 int OSCompareAndSwap (int ,int ,int *) ;
 int VM_KERN_MEMORY_OSFMK ;
 int assert (int) ;
 int cnputc_lock ;
 TYPE_1__ console_ring ;
 int console_ring_lock_init () ;
 int hw_lock_init (int *) ;
 int kernel_map ;
 int kmem_alloc (int ,int *,int ,int ) ;
 int panic (char*,int) ;

void
console_init(void)
{
 int ret, i;
 uint32_t * p;

 if (!OSCompareAndSwap(0, KERN_CONSOLE_RING_SIZE, (UInt32 *)&console_ring.len))
  return;

 assert(console_ring.len > 0);

 ret = kmem_alloc(kernel_map, (vm_offset_t *)&console_ring.buffer, KERN_CONSOLE_BUF_SIZE, VM_KERN_MEMORY_OSFMK);
 if (ret != KERN_SUCCESS) {
  panic("console_ring_init() failed to allocate ring buffer, error %d\n", ret);
 }


 for (i = 0; i < MAX_CPU_SLOTS; i++) {
  p = (uint32_t *)((uintptr_t)console_ring.buffer + console_ring.len + (i * sizeof(console_buf_t)));
  *p = CPU_BUF_FREE_HEX;
 }

 console_ring.used = 0;
 console_ring.read_ptr = console_ring.buffer;
 console_ring.write_ptr = console_ring.buffer;
 console_ring_lock_init();
 hw_lock_init(&cnputc_lock);
}

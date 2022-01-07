
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int VM_KERN_MEMORY_DIAG ;
 int assert (int ) ;
 int * kalloc_tag (scalar_t__,int ) ;
 scalar_t__ kpc_get_counterbuf_size () ;
 int sysctl_lock ;

__attribute__((used)) static uint64_t *
kpc_get_bigarray(uint32_t *size_out)
{
 static uint64_t *bigarray = ((void*)0);

 LCK_MTX_ASSERT(&sysctl_lock, LCK_MTX_ASSERT_OWNED);

 uint32_t size = kpc_get_counterbuf_size() + sizeof(uint64_t);
 *size_out = size;

 if (bigarray) {
  return bigarray;
 }





 bigarray = kalloc_tag(size, VM_KERN_MEMORY_DIAG);
 assert(bigarray != ((void*)0));
 return bigarray;
}

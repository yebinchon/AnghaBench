
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COUNTERBUF_SIZE ;
 int VM_KERN_MEMORY_DIAG ;
 int bzero (int *,int ) ;
 int * kalloc_tag (int ,int ) ;

uint64_t *
kpc_counterbuf_alloc(void)
{
 uint64_t *buf = ((void*)0);

 buf = kalloc_tag(COUNTERBUF_SIZE, VM_KERN_MEMORY_DIAG);
 if (buf) {
  bzero(buf, COUNTERBUF_SIZE);
 }

 return buf;
}

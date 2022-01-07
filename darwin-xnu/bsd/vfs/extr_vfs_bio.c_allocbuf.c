
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zone_t ;
typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int caddr_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {uintptr_t b_datap; int b_bufsize; int b_bcount; int b_flags; } ;


 int B_META ;
 int B_ZALLOC ;
 int CLBYTES ;
 int CLR (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ MAXBSIZE ;
 int MAXMETA ;
 int MINMETA ;
 scalar_t__ PAGE_SIZE ;
 int SET (int ,int ) ;
 int VM_KERN_MEMORY_FILE ;
 int bcopy (void const*,int ,int) ;
 int getbufzone (int) ;
 void* grab_memory_for_meta_buf (int) ;
 int kernel_map ;
 int kmem_alloc_kobject (int ,scalar_t__*,scalar_t__,int ) ;
 int kmem_free (int ,scalar_t__,int) ;
 int panic (char*) ;
 void* roundup (int,int ) ;
 int zfree (int ,void*) ;

int
allocbuf(buf_t bp, int size)
{
 vm_size_t desired_size;

 desired_size = roundup(size, CLBYTES);

 if (desired_size < PAGE_SIZE)
  desired_size = PAGE_SIZE;
 if (desired_size > MAXBSIZE)
  panic("allocbuf: buffer larger than MAXBSIZE requested");

 if (ISSET(bp->b_flags, B_META)) {
  int nsize = roundup(size, MINMETA);

  if (bp->b_datap) {
   vm_offset_t elem = (vm_offset_t)bp->b_datap;

   if (ISSET(bp->b_flags, B_ZALLOC)) {
           if (bp->b_bufsize < nsize) {
            zone_t zprev;



            zprev = getbufzone(bp->b_bufsize);
     if (nsize <= MAXMETA) {
             desired_size = nsize;


      *(void **)(&bp->b_datap) = grab_memory_for_meta_buf(nsize);
     } else {
             bp->b_datap = (uintptr_t)((void*)0);
             kmem_alloc_kobject(kernel_map, (vm_offset_t *)&bp->b_datap, desired_size, VM_KERN_MEMORY_FILE);
      CLR(bp->b_flags, B_ZALLOC);
     }
     bcopy((void *)elem, (caddr_t)bp->b_datap, bp->b_bufsize);
     zfree(zprev, (void *)elem);
    } else {
            desired_size = bp->b_bufsize;
    }

   } else {
    if ((vm_size_t)bp->b_bufsize < desired_size) {

            bp->b_datap = (uintptr_t)((void*)0);
     kmem_alloc_kobject(kernel_map, (vm_offset_t *)&bp->b_datap, desired_size, VM_KERN_MEMORY_FILE);
     bcopy((const void *)elem, (caddr_t)bp->b_datap, bp->b_bufsize);
     kmem_free(kernel_map, elem, bp->b_bufsize);
    } else {
     desired_size = bp->b_bufsize;
    }
   }
  } else {

   if (nsize <= MAXMETA) {
    desired_size = nsize;


    *(void **)(&bp->b_datap) = grab_memory_for_meta_buf(nsize);
    SET(bp->b_flags, B_ZALLOC);
   } else
    kmem_alloc_kobject(kernel_map, (vm_offset_t *)&bp->b_datap, desired_size, VM_KERN_MEMORY_FILE);
  }

  if (bp->b_datap == 0)
          panic("allocbuf: NULL b_datap");
 }
 bp->b_bufsize = desired_size;
 bp->b_bcount = size;

 return (0);
}

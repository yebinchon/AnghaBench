
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct buf {int dummy; } ;
typedef scalar_t__ ppnum_t ;
typedef int caddr_t ;
typedef int addr64_t ;
struct TYPE_2__ {int mdFlags; int mdSecsize; int mdSize; int mdBase; } ;


 int B_READ ;
 int EINVAL ;
 int ENXIO ;
 int bcopy (void*,void*,size_t) ;
 int bcopy_phys (int,int,unsigned int) ;
 int buf_biodone (struct buf*) ;
 int buf_blkno (struct buf*) ;
 int buf_count (struct buf*) ;
 int buf_device (struct buf*) ;
 int buf_flags (struct buf*) ;
 scalar_t__ buf_map (struct buf*,int *) ;
 int buf_setcount (struct buf*,int) ;
 int buf_seterror (struct buf*,int ) ;
 int buf_setresid (struct buf*,int) ;
 int buf_unmap (struct buf*) ;
 int kernel_pmap ;
 int mapping_set_mod (int) ;
 int mdInited ;
 int mdPhys ;
 TYPE_1__* mdev ;
 unsigned int min (unsigned int,unsigned int) ;
 int minor (int ) ;
 int panic (char*,...) ;
 scalar_t__ pmap_find_phys (int ,int) ;

__attribute__((used)) static void mdevstrategy(struct buf *bp) {
 unsigned int left, lop, csize;
 vm_offset_t vaddr, blkoff;
 int devid;
 addr64_t paddr, fvaddr;
 ppnum_t pp;

 devid = minor(buf_device(bp));

 if ((mdev[devid].mdFlags & mdInited) == 0) {
         buf_seterror(bp, ENXIO);
  buf_biodone(bp);
  return;
 }

 buf_setresid(bp, buf_count(bp));

 blkoff = buf_blkno(bp) * mdev[devid].mdSecsize;






 if (blkoff >= (mdev[devid].mdSize << 12)) {
  if(blkoff != (mdev[devid].mdSize << 12)) {
          buf_seterror(bp, EINVAL);
  }
  buf_biodone(bp);
  return;
 }

 if ((blkoff + buf_count(bp)) > (mdev[devid].mdSize << 12)) {
  buf_setcount(bp, ((mdev[devid].mdSize << 12) - blkoff));
 }




 if (buf_map(bp, (caddr_t *)&vaddr))
         panic("ramstrategy: buf_map failed\n");

 fvaddr = (mdev[devid].mdBase << 12) + blkoff;

 if (buf_flags(bp) & B_READ) {
  if(!(mdev[devid].mdFlags & mdPhys)) {
   bcopy((void *)((uintptr_t)fvaddr),
    (void *)vaddr, (size_t)buf_count(bp));
  }
  else {
   left = buf_count(bp);
   while(left) {

    lop = min((4096 - (vaddr & 4095)), (4096 - (fvaddr & 4095)));
    csize = min(lop, left);

    pp = pmap_find_phys(kernel_pmap, (addr64_t)((uintptr_t)vaddr));
    if(!pp) {
     panic("mdevstrategy: sink address %016llX not mapped\n", (addr64_t)((uintptr_t)vaddr));
    }
    paddr = (addr64_t)(((addr64_t)pp << 12) | (addr64_t)(vaddr & 4095));
    bcopy_phys(fvaddr, paddr, csize);
    mapping_set_mod(paddr >> 12);

    left = left - csize;
    vaddr = vaddr + csize;
    fvaddr = fvaddr + csize;
   }
  }
 }
 else {
  if(!(mdev[devid].mdFlags & mdPhys)) {
   bcopy((void *)vaddr, (void *)((uintptr_t)fvaddr),
    (size_t)buf_count(bp));
  }
  else {
   left = buf_count(bp);
   while(left) {

    lop = min((4096 - (vaddr & 4095)), (4096 - (fvaddr & 4095)));
    csize = min(lop, left);

    pp = pmap_find_phys(kernel_pmap, (addr64_t)((uintptr_t)vaddr));
    if(!pp) {
     panic("mdevstrategy: source address %016llX not mapped\n", (addr64_t)((uintptr_t)vaddr));
    }
    paddr = (addr64_t)(((addr64_t)pp << 12) | (addr64_t)(vaddr & 4095));

    bcopy_phys(paddr, fvaddr, csize);

    left = left - csize;
    vaddr = vaddr + csize;
    fvaddr = fvaddr + csize;
   }
  }
 }






 buf_unmap(bp);

 buf_setresid(bp, 0);
 buf_biodone(bp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int addr64_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG (int,unsigned int,unsigned int,unsigned int,int,int ) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAGE_SIZE ;
 int bcopy_phys (int,int,unsigned int) ;
 scalar_t__ copyio_phys (int,int,unsigned int,int) ;
 int cppvFsnk ;
 int cppvFsrc ;
 int cppvPsnk ;
 int cppvPsrc ;
 int flush_dcache64 (int,unsigned int,int) ;
 int panic (char*) ;

kern_return_t
copypv(addr64_t src64, addr64_t snk64, unsigned int size, int which)
{
 unsigned int lop, csize;
 int bothphys = 0;

 KERNEL_DEBUG(0xeff7004c | DBG_FUNC_START, (unsigned)src64,
       (unsigned)snk64, size, which, 0);

 if ((which & (cppvPsrc | cppvPsnk)) == 0 )
  panic("copypv: no more than 1 parameter may be virtual\n");

 if ((which & (cppvPsrc | cppvPsnk)) == (cppvPsrc | cppvPsnk))
         bothphys = 1;

 while (size) {

         if (bothphys) {
          lop = (unsigned int)(PAGE_SIZE - (snk64 & (PAGE_SIZE - 1)));

   if (lop > (unsigned int)(PAGE_SIZE - (src64 & (PAGE_SIZE - 1))))
           lop = (unsigned int)(PAGE_SIZE - (src64 & (PAGE_SIZE - 1)));
  } else {





          if (which & cppvPsrc)
           lop = (unsigned int)(PAGE_SIZE - (src64 & (PAGE_SIZE - 1)));
   else
           lop = (unsigned int)(PAGE_SIZE - (snk64 & (PAGE_SIZE - 1)));
  }
  csize = size;
  if (lop < size)
          csize = lop;
  if (bothphys)
          bcopy_phys(src64, snk64, csize);
  else {
          if (copyio_phys(src64, snk64, csize, which))
           return (KERN_FAILURE);
  }






  size -= csize;
  snk64 += csize;
  src64 += csize;
 }
 KERNEL_DEBUG(0xeff7004c | DBG_FUNC_END, (unsigned)src64,
       (unsigned)snk64, size, which, 0);

 return KERN_SUCCESS;
}

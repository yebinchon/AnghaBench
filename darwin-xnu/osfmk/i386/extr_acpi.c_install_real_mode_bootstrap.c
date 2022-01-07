
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int addr64_t ;


 scalar_t__ PROT_MODE_START ;
 scalar_t__ REAL_MODE_BOOTSTRAP_OFFSET ;
 int bcopy_phys (scalar_t__,int ,scalar_t__) ;
 scalar_t__ kvtophys (int ) ;
 int ml_phys_write_word (scalar_t__,unsigned int) ;
 scalar_t__ real_mode_bootstrap_base ;
 scalar_t__ real_mode_bootstrap_end ;

void
install_real_mode_bootstrap(void *prot_entry)
{







 bcopy_phys(kvtophys((vm_offset_t) real_mode_bootstrap_base),
     (addr64_t) REAL_MODE_BOOTSTRAP_OFFSET,
     real_mode_bootstrap_end-real_mode_bootstrap_base);





 ml_phys_write_word(
  PROT_MODE_START+REAL_MODE_BOOTSTRAP_OFFSET,
  (unsigned int)kvtophys((vm_offset_t)prot_entry));


 __asm__("wbinvd");
}

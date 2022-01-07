
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int commpage_descriptor ;


 int INTEL_PGBYTES ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int _COMM_PAGE_TEXT_AREA_USED ;
 scalar_t__ _COMM_PAGE_TEXT_END ;
 int _COMM_PAGE_TEXT_START ;
 int _cpu_capabilities ;
 int commPageBaseOffset ;
 char* commPagePtr ;
 char* commPageTextPtr32 ;
 char* commPageTextPtr64 ;
 int ** commpage_32_routines ;
 int ** commpage_64_routines ;
 scalar_t__ commpage_allocate (int ,int ,int) ;
 int commpage_stuff_routine (int *) ;
 int commpage_text32_map ;
 int commpage_text64_map ;
 int k64Bit ;
 scalar_t__ next ;
 int panic (char*,scalar_t__,char*) ;
 int pmap_commpage32_init (int ,int ,int) ;
 int pmap_commpage64_init (int ,int ,int) ;

void commpage_text_populate( void ){
 commpage_descriptor **rd;

 next = 0;
 commPagePtr = (char *) commpage_allocate(commpage_text32_map, (vm_size_t) _COMM_PAGE_TEXT_AREA_USED, VM_PROT_READ | VM_PROT_EXECUTE);
 commPageTextPtr32 = commPagePtr;

 char *cptr = commPagePtr;
 int i=0;
 for(; i< _COMM_PAGE_TEXT_AREA_USED; i++){
  cptr[i]=0xCC;
 }

 commPageBaseOffset = _COMM_PAGE_TEXT_START;
 for (rd = commpage_32_routines; *rd != ((void*)0); rd++) {
  commpage_stuff_routine(*rd);
 }






 if (_cpu_capabilities & k64Bit) {
  next = 0;
  commPagePtr = (char *) commpage_allocate(commpage_text64_map, (vm_size_t) _COMM_PAGE_TEXT_AREA_USED, VM_PROT_READ | VM_PROT_EXECUTE);
  commPageTextPtr64 = commPagePtr;

  cptr=commPagePtr;
  for(i=0; i<_COMM_PAGE_TEXT_AREA_USED; i++){
   cptr[i]=0xCC;
  }

  for (rd = commpage_64_routines; *rd !=((void*)0); rd++) {
   commpage_stuff_routine(*rd);
  }





 }

 if (next > _COMM_PAGE_TEXT_END)
  panic("commpage text overflow: next=0x%08x, commPagePtr=%p", next, commPagePtr);

}

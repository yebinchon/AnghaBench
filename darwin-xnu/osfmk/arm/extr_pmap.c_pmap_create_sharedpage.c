
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int ppnum_t ;
typedef int pmap_paddr_t ;
typedef scalar_t__ kern_return_t ;


 int ARM_PTE_NG ;
 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 int PMAP_COMM_PAGE_PTE_TEMPLATE ;
 int TRUE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_WIMG_USE_DEFAULT ;
 int _COMM_HIGH_PAGE64_BASE_ADDRESS ;
 int _COMM_PAGE32_BASE_ADDRESS ;
 int _COMM_PAGE64_BASE_ADDRESS ;
 int assert (int) ;
 scalar_t__ atop (int ) ;
 int kasan_map_shadow (int ,int ,int) ;
 int * kernel_pmap ;
 int memset (char*,int ,int ) ;
 scalar_t__ phystokv (int ) ;
 int * pmap_create (int *,int,int ) ;
 scalar_t__ pmap_enter (int *,int ,int ,int ,int ,int ,int ) ;
 int pmap_pages_alloc (int *,int ,int ) ;
 int pmap_update_tt3e (int *,int ,int) ;
 int * sharedpage_pmap ;

vm_map_address_t
pmap_create_sharedpage(
         void
)
{
 kern_return_t kr;
 pmap_paddr_t pa = 0;


 (void) pmap_pages_alloc(&pa, PAGE_SIZE, 0);

 memset((char *) phystokv(pa), 0, PAGE_SIZE);
 sharedpage_pmap = pmap_create(((void*)0), 0x0, FALSE);
 assert(sharedpage_pmap != ((void*)0));


 kr = pmap_enter(sharedpage_pmap, _COMM_PAGE64_BASE_ADDRESS, (ppnum_t)atop(pa), VM_PROT_READ, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, TRUE);
 assert(kr == KERN_SUCCESS);
 pmap_update_tt3e(sharedpage_pmap, _COMM_PAGE64_BASE_ADDRESS, PMAP_COMM_PAGE_PTE_TEMPLATE);


 kr = pmap_enter(sharedpage_pmap, _COMM_PAGE32_BASE_ADDRESS, (ppnum_t)atop(pa), VM_PROT_READ, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, TRUE);
 assert(kr == KERN_SUCCESS);
 pmap_update_tt3e(sharedpage_pmap, _COMM_PAGE32_BASE_ADDRESS, PMAP_COMM_PAGE_PTE_TEMPLATE);


 return ((vm_map_address_t)phystokv(pa));
}

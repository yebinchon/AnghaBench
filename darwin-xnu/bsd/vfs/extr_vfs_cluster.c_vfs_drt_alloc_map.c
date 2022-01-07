
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct vfs_drt_clustermap {int scm_modulus; scalar_t__ scm_iskips; scalar_t__ scm_lastclean; scalar_t__ scm_buckets; int scm_magic; } ;
typedef scalar_t__ kern_return_t ;


 int DRT_BITVECTOR_CLEAR (struct vfs_drt_clustermap*,int) ;
 int DRT_DEBUG_ALLOC ;
 int DRT_DEBUG_SCMDATA ;
 int DRT_HASH_CLEAR (struct vfs_drt_clustermap*,int) ;
 int DRT_HASH_COPY (struct vfs_drt_clustermap*,int,struct vfs_drt_clustermap*,int) ;
 int DRT_HASH_GET_ADDRESS (struct vfs_drt_clustermap*,int) ;
 scalar_t__ DRT_HASH_GET_COUNT (struct vfs_drt_clustermap*,int) ;
 scalar_t__ DRT_HASH_LARGE_MEMORY_REQUIRED ;
 int DRT_HASH_LARGE_MODULUS ;
 int DRT_HASH_SMALL_MODULUS ;
 scalar_t__ DRT_HASH_VACANT (struct vfs_drt_clustermap*,int) ;
 int DRT_HASH_VACATE (struct vfs_drt_clustermap*,int) ;
 int DRT_LARGE_ALLOCATION ;
 int DRT_SCM_MAGIC ;
 int DRT_SMALL_ALLOCATION ;
 scalar_t__ KERN_SUCCESS ;
 int VM_KERN_MEMORY_FILE ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,int *,int ,int ) ;
 scalar_t__ max_mem ;
 int panic (char*) ;
 int vfs_drt_free_map (struct vfs_drt_clustermap*) ;
 scalar_t__ vfs_drt_get_index (struct vfs_drt_clustermap**,int ,int*,int) ;
 int vfs_drt_trace (struct vfs_drt_clustermap*,int ,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static kern_return_t
vfs_drt_alloc_map(struct vfs_drt_clustermap **cmapp)
{
 struct vfs_drt_clustermap *cmap, *ocmap;
 kern_return_t kret;
 u_int64_t offset;
 u_int32_t i;
 int nsize, active_buckets, index, copycount;

 ocmap = ((void*)0);
 if (cmapp != ((void*)0))
  ocmap = *cmapp;




 if (ocmap == ((void*)0)) {
  nsize = DRT_HASH_SMALL_MODULUS;
 } else {

  active_buckets = 0;
  for (i = 0; i < ocmap->scm_modulus; i++) {
   if (!DRT_HASH_VACANT(ocmap, i) &&
       (DRT_HASH_GET_COUNT(ocmap, i) != 0))
    active_buckets++;
  }




  if (ocmap->scm_modulus == DRT_HASH_SMALL_MODULUS) {




   if ((active_buckets > (DRT_HASH_SMALL_MODULUS - 5)) &&
       (max_mem >= DRT_HASH_LARGE_MEMORY_REQUIRED)) {
    nsize = DRT_HASH_LARGE_MODULUS;
   } else {
    nsize = DRT_HASH_SMALL_MODULUS;
   }
  } else {

   nsize = DRT_HASH_LARGE_MODULUS;






   if (active_buckets >= DRT_HASH_LARGE_MODULUS)
    return(KERN_SUCCESS);
  }
 }





 kret = kmem_alloc(kernel_map, (vm_offset_t *)&cmap,
     (nsize == DRT_HASH_SMALL_MODULUS) ? DRT_SMALL_ALLOCATION : DRT_LARGE_ALLOCATION, VM_KERN_MEMORY_FILE);
 if (kret != KERN_SUCCESS)
  return(kret);
 cmap->scm_magic = DRT_SCM_MAGIC;
 cmap->scm_modulus = nsize;
 cmap->scm_buckets = 0;
 cmap->scm_lastclean = 0;
 cmap->scm_iskips = 0;
 for (i = 0; i < cmap->scm_modulus; i++) {
         DRT_HASH_CLEAR(cmap, i);
  DRT_HASH_VACATE(cmap, i);
  DRT_BITVECTOR_CLEAR(cmap, i);
 }




 copycount = 0;
 if (ocmap != ((void*)0)) {
  for (i = 0; i < ocmap->scm_modulus; i++) {

   if (DRT_HASH_VACANT(ocmap, i) ||
       (DRT_HASH_GET_COUNT(ocmap, i) == 0))
    continue;

   offset = DRT_HASH_GET_ADDRESS(ocmap, i);
   kret = vfs_drt_get_index(&cmap, offset, &index, 1);
   if (kret != KERN_SUCCESS) {

    panic("vfs_drt: new cluster map mysteriously too small");
    index = 0;
   }

   DRT_HASH_COPY(ocmap, i, cmap, index);
   copycount++;
  }
 }


 vfs_drt_trace(cmap, DRT_DEBUG_ALLOC, copycount, 0, 0, 0);






 *cmapp = cmap;
 if (ocmap != ((void*)0)) {

  vfs_drt_trace(ocmap, DRT_DEBUG_SCMDATA,
         ocmap->scm_modulus,
         ocmap->scm_buckets,
         ocmap->scm_lastclean,
         ocmap->scm_iskips);

  vfs_drt_free_map(ocmap);
 }
 return(KERN_SUCCESS);
}

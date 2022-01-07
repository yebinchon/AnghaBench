
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct vfs_drt_clustermap {int scm_modulus; int scm_lastclean; int scm_buckets; int scm_iskips; } ;
typedef scalar_t__ off_t ;
typedef int kern_return_t ;


 int DRT_BITVECTOR_PAGES ;
 int DRT_DEBUG_RETCLUSTER ;
 int DRT_DEBUG_SCMDATA ;
 int DRT_HASH (struct vfs_drt_clustermap*,scalar_t__) ;
 scalar_t__ DRT_HASH_GET_ADDRESS (struct vfs_drt_clustermap*,int) ;
 scalar_t__ DRT_HASH_GET_COUNT (struct vfs_drt_clustermap*,int) ;
 scalar_t__ DRT_HASH_TEST_BIT (struct vfs_drt_clustermap*,int,int) ;
 scalar_t__ DRT_HASH_VACANT (struct vfs_drt_clustermap*,int) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAGE_SIZE ;
 int panic (char*,struct vfs_drt_clustermap*,int,scalar_t__) ;
 int vfs_drt_do_mark_pages (void**,scalar_t__,int,int *,int ) ;
 int vfs_drt_free_map (struct vfs_drt_clustermap*) ;
 int vfs_drt_trace (struct vfs_drt_clustermap*,int ,int,int,int,int ) ;

__attribute__((used)) static kern_return_t
vfs_drt_get_cluster(void **cmapp, off_t *offsetp, u_int *lengthp)
{
 struct vfs_drt_clustermap *cmap;
 u_int64_t offset;
 u_int length;
 u_int32_t j;
 int index, i, fs, ls;


 if ((cmapp == ((void*)0)) || (*cmapp == ((void*)0)))
  return(KERN_FAILURE);
 cmap = *cmapp;


 for (offset = 0, j = 0; j < cmap->scm_modulus; offset += (DRT_BITVECTOR_PAGES * PAGE_SIZE), j++) {
         index = DRT_HASH(cmap, offset);

         if (DRT_HASH_VACANT(cmap, index) || (DRT_HASH_GET_COUNT(cmap, index) == 0))
   continue;


  fs = -1;

  for (i = 0; i < DRT_BITVECTOR_PAGES; i++) {
          if (DRT_HASH_TEST_BIT(cmap, index, i)) {
           fs = i;
    break;
   }
  }
  if (fs == -1) {

          panic("vfs_drt: entry summary count > 0 but no bits set in map, cmap = %p, index = %d, count = %lld",
         cmap, index, DRT_HASH_GET_COUNT(cmap, index));
  }
  for (ls = 0; i < DRT_BITVECTOR_PAGES; i++, ls++) {
   if (!DRT_HASH_TEST_BIT(cmap, index, i))
           break;
  }


  offset = DRT_HASH_GET_ADDRESS(cmap, index) + (PAGE_SIZE * fs);
  length = ls * PAGE_SIZE;
  vfs_drt_do_mark_pages(cmapp, offset, length, ((void*)0), 0);
  cmap->scm_lastclean = index;


  *offsetp = (off_t)offset;
  *lengthp = length;

  vfs_drt_trace(cmap, DRT_DEBUG_RETCLUSTER, (int)offset, (int)length, 0, 0);
  return(KERN_SUCCESS);
 }





 vfs_drt_trace(cmap, DRT_DEBUG_SCMDATA,
        cmap->scm_modulus,
        cmap->scm_buckets,
        cmap->scm_lastclean,
        cmap->scm_iskips);

 vfs_drt_free_map(cmap);
 *cmapp = ((void*)0);

 return(KERN_FAILURE);
}

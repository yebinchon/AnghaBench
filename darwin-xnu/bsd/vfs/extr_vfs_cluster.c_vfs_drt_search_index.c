
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct vfs_drt_clustermap {scalar_t__ scm_modulus; } ;
typedef int kern_return_t ;


 scalar_t__ DRT_ALIGN_ADDRESS (scalar_t__) ;
 int DRT_HASH (struct vfs_drt_clustermap*,scalar_t__) ;
 scalar_t__ DRT_HASH_GET_ADDRESS (struct vfs_drt_clustermap*,int) ;
 int DRT_HASH_NEXT (struct vfs_drt_clustermap*,int) ;
 scalar_t__ DRT_HASH_VACANT (struct vfs_drt_clustermap*,int) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;

__attribute__((used)) static kern_return_t
vfs_drt_search_index(struct vfs_drt_clustermap *cmap, u_int64_t offset, int *indexp)
{
 int index;
 u_int32_t i;

 offset = DRT_ALIGN_ADDRESS(offset);
 index = DRT_HASH(cmap, offset);


 for (i = 0; i < cmap->scm_modulus; i++) {




  if (DRT_HASH_VACANT(cmap, index))
   break;




  if (DRT_HASH_GET_ADDRESS(cmap, index) == offset) {
   *indexp = index;
   return(KERN_SUCCESS);
  }




  index = DRT_HASH_NEXT(cmap, index);
 }



 return(KERN_FAILURE);
}

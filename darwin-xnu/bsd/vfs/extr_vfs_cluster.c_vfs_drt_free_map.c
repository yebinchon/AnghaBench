
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vfs_drt_clustermap {scalar_t__ scm_modulus; } ;
typedef int kern_return_t ;


 scalar_t__ DRT_HASH_SMALL_MODULUS ;
 int DRT_LARGE_ALLOCATION ;
 int DRT_SMALL_ALLOCATION ;
 int KERN_SUCCESS ;
 int kernel_map ;
 int kmem_free (int ,int ,int ) ;

__attribute__((used)) static kern_return_t
vfs_drt_free_map(struct vfs_drt_clustermap *cmap)
{
 kmem_free(kernel_map, (vm_offset_t)cmap,
    (cmap->scm_modulus == DRT_HASH_SMALL_MODULUS) ? DRT_SMALL_ALLOCATION : DRT_LARGE_ALLOCATION);
 return(KERN_SUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_drt_clustermap {int scm_lastclean; int scm_iskips; int scm_buckets; int scm_modulus; } ;
typedef int kern_return_t ;


 int DRT_DEBUG_SCMDATA ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int vfs_drt_free_map (struct vfs_drt_clustermap*) ;
 int vfs_drt_trace (struct vfs_drt_clustermap*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static kern_return_t
vfs_drt_control(void **cmapp, int op_type)
{
 struct vfs_drt_clustermap *cmap;


 if ((cmapp == ((void*)0)) || (*cmapp == ((void*)0)))
  return(KERN_FAILURE);
 cmap = *cmapp;

 switch (op_type) {
 case 0:

  vfs_drt_trace(cmap, DRT_DEBUG_SCMDATA,
         cmap->scm_modulus,
         cmap->scm_buckets,
         cmap->scm_lastclean,
         cmap->scm_iskips);

  vfs_drt_free_map(cmap);
  *cmapp = ((void*)0);
         break;

 case 1:
         cmap->scm_lastclean = 0;
         break;
 }
 return(KERN_SUCCESS);
}

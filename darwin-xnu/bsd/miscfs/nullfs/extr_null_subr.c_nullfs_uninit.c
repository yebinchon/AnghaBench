
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ,int ) ;
 int M_TEMP ;
 int lck_attr_free (int *) ;
 int lck_grp_attr_free (int *) ;
 int lck_grp_free (int *) ;
 int lck_mtx_destroy (int *,int *) ;
 int * null_hashlck_attr ;
 int * null_hashlck_grp ;
 int * null_hashlck_grp_attr ;
 int null_hashmtx ;
 int null_node_hashtbl ;

int
nullfs_uninit()
{


 lck_mtx_destroy(&null_hashmtx, null_hashlck_grp);
 FREE(null_node_hashtbl, M_TEMP);
 if (null_hashlck_grp_attr) {
  lck_grp_attr_free(null_hashlck_grp_attr);
  null_hashlck_grp_attr = ((void*)0);
 }
 if (null_hashlck_grp) {
  lck_grp_free(null_hashlck_grp);
  null_hashlck_grp = ((void*)0);
 }
 if (null_hashlck_attr) {
  lck_attr_free(null_hashlck_attr);
  null_hashlck_attr = ((void*)0);
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int fg_lock; int fg_cred; int * fg_vn_data; } ;


 int FREE_ZONE (struct fileglob*,int,int ) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int M_FILEGLOB ;
 int OSAddAtomic (int,int *) ;
 int fg_vn_data_free (int *) ;
 int file_lck_grp ;
 int kauth_cred_unref (int *) ;
 int lck_mtx_destroy (int *,int ) ;
 int mac_file_label_destroy (struct fileglob*) ;
 int nfiles ;

void
fg_free(struct fileglob *fg)
{
 OSAddAtomic(-1, &nfiles);

 if (fg->fg_vn_data) {
  fg_vn_data_free(fg->fg_vn_data);
  fg->fg_vn_data = ((void*)0);
 }

 if (IS_VALID_CRED(fg->fg_cred)) {
  kauth_cred_unref(&fg->fg_cred);
 }
 lck_mtx_destroy(&fg->fg_lock, file_lck_grp);




 FREE_ZONE(fg, sizeof *fg, M_FILEGLOB);
}

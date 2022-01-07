
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_vn_data {int fv_lock; struct fd_vn_data* fv_buf; } ;


 int FREE (struct fd_vn_data*,int ) ;
 int M_FD_DIRBUF ;
 int M_FD_VN_DATA ;
 int fd_vn_lck_grp ;
 int lck_mtx_destroy (int *,int ) ;

void
fg_vn_data_free(void *fgvndata)
{
 struct fd_vn_data *fvdata = (struct fd_vn_data *)fgvndata;

 if (fvdata->fv_buf)
  FREE(fvdata->fv_buf, M_FD_DIRBUF);
 lck_mtx_destroy(&fvdata->fv_lock, fd_vn_lck_grp);
 FREE(fvdata, M_FD_VN_DATA);
}

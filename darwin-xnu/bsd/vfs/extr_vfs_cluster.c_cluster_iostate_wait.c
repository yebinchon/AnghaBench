
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct clios {scalar_t__ io_issued; scalar_t__ io_completed; int io_wanted; int io_mtxp; } ;
typedef int caddr_t ;


 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG (int,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ PRIBIO ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int ,int *,scalar_t__,char const*,int *) ;

__attribute__((used)) static void
cluster_iostate_wait(struct clios *iostate, u_int target, const char *wait_name)
{

 lck_mtx_lock(&iostate->io_mtxp);

 while ((iostate->io_issued - iostate->io_completed) > target) {

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 95)) | DBG_FUNC_START,
        iostate->io_issued, iostate->io_completed, target, 0, 0);

  iostate->io_wanted = 1;
  msleep((caddr_t)&iostate->io_wanted, &iostate->io_mtxp, PRIBIO + 1, wait_name, ((void*)0));

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 95)) | DBG_FUNC_END,
        iostate->io_issued, iostate->io_completed, target, 0, 0);
 }
 lck_mtx_unlock(&iostate->io_mtxp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int file_lck_attr ;
 int file_lck_grp ;
 int file_lck_grp_attr ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_alloc_init (int ,int ) ;
 int uipc_lock ;

void
file_lock_init(void)
{

 file_lck_grp_attr= lck_grp_attr_alloc_init();

 file_lck_grp = lck_grp_alloc_init("file", file_lck_grp_attr);


 file_lck_attr = lck_attr_alloc_init();

 uipc_lock = lck_mtx_alloc_init(file_lck_grp, file_lck_attr);
}

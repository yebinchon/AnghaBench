
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;
typedef int kern_return_t ;


 int vfs_drt_do_mark_pages (void**,int ,int ,int *,int) ;

__attribute__((used)) static kern_return_t
vfs_drt_mark_pages(void **cmapp, off_t offset, u_int length, u_int *setcountp)
{

 return(vfs_drt_do_mark_pages(cmapp, offset, length, setcountp, 1));
}

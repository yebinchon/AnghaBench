
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_llreach {int lr_debug; int lr_lock; } ;


 int IFD_ALLOC ;
 int M_WAITOK ;
 int bzero (struct if_llreach*,int ) ;
 int iflr_size ;
 int iflr_zone ;
 int ifnet_lock_attr ;
 int ifnet_lock_group ;
 int lck_mtx_init (int *,int ,int ) ;
 struct if_llreach* zalloc (int ) ;
 struct if_llreach* zalloc_noblock (int ) ;

__attribute__((used)) static struct if_llreach *
iflr_alloc(int how)
{
 struct if_llreach *lr;

 lr = (how == M_WAITOK) ? zalloc(iflr_zone) : zalloc_noblock(iflr_zone);
 if (lr != ((void*)0)) {
  bzero(lr, iflr_size);
  lck_mtx_init(&lr->lr_lock, ifnet_lock_group, ifnet_lock_attr);
  lr->lr_debug |= IFD_ALLOC;
 }
 return (lr);
}

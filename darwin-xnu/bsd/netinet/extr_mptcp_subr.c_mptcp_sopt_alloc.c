
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptopt {int dummy; } ;


 int M_WAITOK ;
 int bzero (struct mptopt*,int ) ;
 int mptopt_zone ;
 int mptopt_zone_size ;
 struct mptopt* zalloc (int ) ;
 struct mptopt* zalloc_noblock (int ) ;

struct mptopt *
mptcp_sopt_alloc(int how)
{
 struct mptopt *mpo;

 mpo = (how == M_WAITOK) ? zalloc(mptopt_zone) :
     zalloc_noblock(mptopt_zone);
 if (mpo != ((void*)0)) {
  bzero(mpo, mptopt_zone_size);
 }

 return (mpo);
}

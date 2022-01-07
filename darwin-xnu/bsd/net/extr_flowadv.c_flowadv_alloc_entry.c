
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowadv_fcentry {int dummy; } ;


 int M_WAITOK ;
 int bzero (struct flowadv_fcentry*,int ) ;
 int fadv_zone ;
 int fadv_zone_size ;
 struct flowadv_fcentry* zalloc (int ) ;
 struct flowadv_fcentry* zalloc_noblock (int ) ;

struct flowadv_fcentry *
flowadv_alloc_entry(int how)
{
 struct flowadv_fcentry *fce;

 fce = (how == M_WAITOK) ? zalloc(fadv_zone) : zalloc_noblock(fadv_zone);
 if (fce != ((void*)0))
  bzero(fce, fadv_zone_size);

 return (fce);
}

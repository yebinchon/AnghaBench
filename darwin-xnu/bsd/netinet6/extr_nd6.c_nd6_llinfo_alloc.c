
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llinfo_nd6 {int dummy; } ;


 int M_WAITOK ;
 int bzero (struct llinfo_nd6*,int) ;
 int llinfo_nd6_zone ;
 struct llinfo_nd6* zalloc (int ) ;
 struct llinfo_nd6* zalloc_noblock (int ) ;

__attribute__((used)) static struct llinfo_nd6 *
nd6_llinfo_alloc(int how)
{
 struct llinfo_nd6 *ln;

 ln = (how == M_WAITOK) ? zalloc(llinfo_nd6_zone) :
     zalloc_noblock(llinfo_nd6_zone);
 if (ln != ((void*)0))
  bzero(ln, sizeof (*ln));

 return (ln);
}

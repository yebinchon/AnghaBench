
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_solsrc {int dummy; } ;


 int M_WAITOK ;
 int bzero (struct nd6_prproxy_solsrc*,int ) ;
 int solsrc_size ;
 int solsrc_zone ;
 struct nd6_prproxy_solsrc* zalloc (int ) ;
 struct nd6_prproxy_solsrc* zalloc_noblock (int ) ;

__attribute__((used)) static struct nd6_prproxy_solsrc *
nd6_solsrc_alloc(int how)
{
 struct nd6_prproxy_solsrc *ssrc;

 ssrc = (how == M_WAITOK) ? zalloc(solsrc_zone) :
     zalloc_noblock(solsrc_zone);
 if (ssrc != ((void*)0))
  bzero(ssrc, solsrc_size);

 return (ssrc);
}

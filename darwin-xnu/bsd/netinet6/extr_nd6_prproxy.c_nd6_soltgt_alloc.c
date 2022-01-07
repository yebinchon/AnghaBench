
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_soltgt {int soltgt_q; } ;


 int M_WAITOK ;
 int TAILQ_INIT (int *) ;
 int bzero (struct nd6_prproxy_soltgt*,int ) ;
 int soltgt_size ;
 int soltgt_zone ;
 struct nd6_prproxy_soltgt* zalloc (int ) ;
 struct nd6_prproxy_soltgt* zalloc_noblock (int ) ;

__attribute__((used)) static struct nd6_prproxy_soltgt *
nd6_soltgt_alloc(int how)
{
 struct nd6_prproxy_soltgt *soltgt;

 soltgt = (how == M_WAITOK) ? zalloc(soltgt_zone) :
     zalloc_noblock(soltgt_zone);
 if (soltgt != ((void*)0)) {
  bzero(soltgt, soltgt_size);
  TAILQ_INIT(&soltgt->soltgt_q);
 }
 return (soltgt);
}

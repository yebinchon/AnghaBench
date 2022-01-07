
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_prelist {int dummy; } ;


 int M_WAITOK ;
 int bzero (struct nd6_prproxy_prelist*,int ) ;
 int ndprl_size ;
 int ndprl_zone ;
 struct nd6_prproxy_prelist* zalloc (int ) ;
 struct nd6_prproxy_prelist* zalloc_noblock (int ) ;

__attribute__((used)) static struct nd6_prproxy_prelist *
nd6_ndprl_alloc(int how)
{
 struct nd6_prproxy_prelist *ndprl;

 ndprl = (how == M_WAITOK) ? zalloc(ndprl_zone) :
     zalloc_noblock(ndprl_zone);
 if (ndprl != ((void*)0))
  bzero(ndprl, ndprl_size);

 return (ndprl);
}

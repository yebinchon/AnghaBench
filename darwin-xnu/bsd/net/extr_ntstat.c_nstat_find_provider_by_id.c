
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_provider {scalar_t__ nstat_provider_id; struct nstat_provider* next; } ;
typedef scalar_t__ nstat_provider_id_t ;


 struct nstat_provider* nstat_providers ;

__attribute__((used)) static struct nstat_provider*
nstat_find_provider_by_id(
 nstat_provider_id_t id)
{
 struct nstat_provider *provider;

 for (provider = nstat_providers; provider != ((void*)0); provider = provider->next)
 {
  if (provider->nstat_provider_id == id)
   break;
 }

 return provider;
}

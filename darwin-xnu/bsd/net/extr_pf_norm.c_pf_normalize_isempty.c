
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int pf_cachequeue ;
 int pf_fragqueue ;

int
pf_normalize_isempty(void)
{
 return (TAILQ_EMPTY(&pf_fragqueue) && TAILQ_EMPTY(&pf_cachequeue));
}

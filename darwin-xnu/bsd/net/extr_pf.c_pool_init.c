
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {unsigned int pool_hiwat; unsigned int pool_limit; char const* pool_name; int * pool_zone; } ;


 int FALSE ;
 int PAGE_SIZE ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_EXPAND ;
 int bzero (struct pool*,int) ;
 int * zinit (size_t,int,int ,char const*) ;
 int zone_change (int *,int ,int ) ;

void
pool_init(struct pool *pp, size_t size, unsigned int align, unsigned int ioff,
    int flags, const char *wchan, void *palloc)
{
#pragma unused(align, ioff, flags, palloc)
 bzero(pp, sizeof (*pp));
 pp->pool_zone = zinit(size, 1024 * size, PAGE_SIZE, wchan);
 if (pp->pool_zone != ((void*)0)) {
  zone_change(pp->pool_zone, Z_EXPAND, TRUE);
  zone_change(pp->pool_zone, Z_CALLERACCT, FALSE);
  pp->pool_hiwat = pp->pool_limit = (unsigned int)-1;
  pp->pool_name = wchan;
 }
}

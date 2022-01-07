
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ pool_count; int pool_zone; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int VERIFY (int) ;
 int pf_lock ;
 int zfree (int ,void*) ;

void
pool_put(struct pool *pp, void *v)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 zfree(pp->pool_zone, v);
 VERIFY(pp->pool_count != 0);
 pp->pool_count--;
}

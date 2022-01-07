
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ pool_count; scalar_t__ pool_limit; char* pool_name; int pool_zone; int pool_fails; } ;


 int DPFPRINTF (int ,char*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PF_DEBUG_NOISY ;
 int PR_NOWAIT ;
 int PR_WAITOK ;
 int VERIFY (int) ;
 int pf_lock ;
 void* zalloc_canblock (int ,int) ;

void *
pool_get(struct pool *pp, int flags)
{
 void *buf;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (pp->pool_count > pp->pool_limit) {
  DPFPRINTF(PF_DEBUG_NOISY,
      ("pf: pool %s hard limit reached (%d)\n",
      pp->pool_name != ((void*)0) ? pp->pool_name : "unknown",
      pp->pool_limit));
  pp->pool_fails++;
  return (((void*)0));
 }

 buf = zalloc_canblock(pp->pool_zone, (flags & (PR_NOWAIT | PR_WAITOK)));
 if (buf != ((void*)0)) {
  pp->pool_count++;
  VERIFY(pp->pool_count != 0);
 }
 return (buf);
}

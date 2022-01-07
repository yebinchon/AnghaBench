
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int flowq_cache ;
 int mcache_reap_now (int ,int ) ;

void
fq_codel_reap_caches(boolean_t purge)
{
 mcache_reap_now(flowq_cache, purge);
}

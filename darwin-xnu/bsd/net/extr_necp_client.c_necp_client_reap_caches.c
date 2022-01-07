
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int mcache_reap_now (int ,int ) ;
 int necp_flow_cache ;
 int necp_flow_registration_cache ;

void
necp_client_reap_caches(boolean_t purge)
{
 mcache_reap_now(necp_flow_cache, purge);
 mcache_reap_now(necp_flow_registration_cache, purge);
}

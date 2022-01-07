
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCSM_CACHE_TYPE_NONE ;
 unsigned int vcsm_malloc_cache (unsigned int,int ,char*) ;

unsigned int vcsm_malloc( unsigned int size, char *name )
{
   return vcsm_malloc_cache( size, VCSM_CACHE_TYPE_NONE, name );
}

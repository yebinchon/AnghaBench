
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct zcc_magazine {int dummy; } ;


 int DEFAULT_DEPOT_SIZE ;
 int DEFAULT_MAGAZINE_SIZE ;
 int LCK_GRP_ATTR_NULL ;
 int PE_parse_boot_argn (char*,int*,int) ;
 int TRUE ;
 int assert (int ) ;
 int depot_element_count ;
 scalar_t__ early_random () ;
 int lck_grp_init (int *,char*,int ) ;
 int magazine_element_count ;
 int * magazine_zone ;
 uintptr_t zcache_canary ;
 int zcache_init_marked_zones () ;
 int zcache_locks_grp ;
 int * zinit (int,int,int,char*) ;
 int zone_cache_ready ;

void zcache_bootstrap(void)
{

 if (! PE_parse_boot_argn("zcc_magazine_element_count", &magazine_element_count, sizeof (uint16_t)))
  magazine_element_count = DEFAULT_MAGAZINE_SIZE;

 int magazine_size = sizeof(struct zcc_magazine) + magazine_element_count * sizeof(void *);

 magazine_zone = zinit(magazine_size, 100000 * magazine_size , magazine_size, "zcc_magazine_zone");

 assert(magazine_zone != ((void*)0));


 if (! PE_parse_boot_argn("zcc_depot_element_count", &depot_element_count, sizeof (uint16_t)))
  depot_element_count = DEFAULT_DEPOT_SIZE;

 lck_grp_init(&zcache_locks_grp, "zcc_depot_lock", LCK_GRP_ATTR_NULL);


 zcache_canary = (uintptr_t) early_random();

 zone_cache_ready = TRUE;

 zcache_init_marked_zones();
}

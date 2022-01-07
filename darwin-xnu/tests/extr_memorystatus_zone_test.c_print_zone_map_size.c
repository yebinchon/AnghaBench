
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zstats ;
typedef int uint64_t ;


 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*,int,int,int) ;
 int T_QUIET ;
 int sysctlbyname (char*,int**,size_t*,int *,int ) ;

__attribute__((used)) static void print_zone_map_size(void)
{
 int ret;
 uint64_t zstats[2];
 size_t zstats_size = sizeof(zstats);

 ret = sysctlbyname("kern.zone_map_size_and_capacity", &zstats, &zstats_size, ((void*)0), 0);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(ret, "sysctl kern.zone_map_size_and_capacity failed");

 T_LOG("Zone map capacity: %-30lldZone map size: %lld [%lld%% full]", zstats[1], zstats[0], (zstats[0] * 100)/zstats[1]);
}

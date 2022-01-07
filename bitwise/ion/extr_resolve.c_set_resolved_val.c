
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint64_t ;
typedef int u64 ;
typedef int Val ;


 int assert (int) ;
 int map_put_uint64 (int *,void*,int ) ;
 int memcpy (int *,int *,int) ;
 int resolved_val_map ;

void set_resolved_val(void *ptr, Val val) {
    uint64_t u64;
    assert(sizeof(val) == sizeof(u64));
    memcpy(&u64, &val, sizeof(val));
    map_put_uint64(&resolved_val_map, ptr, u64);
}

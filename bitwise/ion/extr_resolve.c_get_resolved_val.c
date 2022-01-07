
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint64_t ;
typedef int u64 ;
typedef int Val ;


 int assert (int) ;
 int map_get_uint64 (int *,void*) ;
 int memcpy (int *,int *,int) ;
 int resolved_val_map ;

Val get_resolved_val(void *ptr) {
    uint64_t u64 = map_get_uint64(&resolved_val_map, ptr);
    Val val;
    assert(sizeof(val) == sizeof(u64));
    memcpy(&val, &u64, sizeof(u64));
    return val;
}

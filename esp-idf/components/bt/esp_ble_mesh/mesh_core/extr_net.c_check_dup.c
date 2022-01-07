
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
struct net_buf_simple {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int* dup_cache ;
 int dup_cache_next ;
 int * net_buf_simple_tail (struct net_buf_simple*) ;
 int sys_get_be32 (int const*) ;

__attribute__((used)) static bool check_dup(struct net_buf_simple *data)
{
    const u8_t *tail = net_buf_simple_tail(data);
    u32_t val;
    int i;

    val = sys_get_be32(tail - 4) ^ sys_get_be32(tail - 8);

    for (i = 0; i < ARRAY_SIZE(dup_cache); i++) {
        if (dup_cache[i] == val) {
            return 1;
        }
    }

    dup_cache[dup_cache_next++] = val;
    dup_cache_next %= ARRAY_SIZE(dup_cache);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_buf_pool_fixed {int data_size; } ;
struct net_buf_pool {TYPE_1__* alloc; } ;
struct net_buf {int dummy; } ;
typedef int s32_t ;
struct TYPE_2__ {struct net_buf_pool_fixed* alloc_data; } ;


 struct net_buf* net_buf_alloc_len (struct net_buf_pool*,int ,int ) ;

struct net_buf *net_buf_alloc_fixed(struct net_buf_pool *pool, s32_t timeout)
{
    const struct net_buf_pool_fixed *fixed = pool->alloc->alloc_data;

    return net_buf_alloc_len(pool, fixed->data_size, timeout);
}

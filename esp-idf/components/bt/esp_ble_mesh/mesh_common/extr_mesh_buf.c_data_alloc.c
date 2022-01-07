
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct net_buf_pool {TYPE_2__* alloc; } ;
struct net_buf {struct net_buf_pool* pool; } ;
typedef int s32_t ;
struct TYPE_4__ {TYPE_1__* cb; } ;
struct TYPE_3__ {int * (* alloc ) (struct net_buf*,size_t*,int ) ;} ;


 int * stub1 (struct net_buf*,size_t*,int ) ;

__attribute__((used)) static u8_t *data_alloc(struct net_buf *buf, size_t *size, s32_t timeout)
{
    struct net_buf_pool *pool = buf->pool;

    return pool->alloc->cb->alloc(buf, size, timeout);
}

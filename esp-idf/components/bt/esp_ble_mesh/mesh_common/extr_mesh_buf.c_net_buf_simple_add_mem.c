
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int dummy; } ;


 int NET_BUF_SIMPLE_DBG (char*,struct net_buf_simple*,size_t) ;
 void* memcpy (int ,void const*,size_t) ;
 int net_buf_simple_add (struct net_buf_simple*,size_t) ;

void *net_buf_simple_add_mem(struct net_buf_simple *buf, const void *mem,
                             size_t len)
{
    NET_BUF_SIMPLE_DBG("buf %p len %u", buf, len);

    return memcpy(net_buf_simple_add(buf, len), mem, len);
}

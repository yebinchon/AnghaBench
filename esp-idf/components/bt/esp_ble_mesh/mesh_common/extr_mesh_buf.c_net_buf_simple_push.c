
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {size_t data; size_t len; } ;


 int NET_BUF_SIMPLE_ASSERT (int) ;
 int NET_BUF_SIMPLE_DBG (char*,struct net_buf_simple*,size_t) ;
 size_t net_buf_simple_headroom (struct net_buf_simple*) ;

void *net_buf_simple_push(struct net_buf_simple *buf, size_t len)
{
    NET_BUF_SIMPLE_DBG("buf %p len %u", buf, len);

    NET_BUF_SIMPLE_ASSERT(net_buf_simple_headroom(buf) >= len);

    buf->data -= len;
    buf->len += len;
    return buf->data;
}

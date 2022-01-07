
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {size_t len; void* data; } ;


 int NET_BUF_SIMPLE_ASSERT (int) ;
 int NET_BUF_SIMPLE_DBG (char*,struct net_buf_simple*,size_t) ;

void *net_buf_simple_pull(struct net_buf_simple *buf, size_t len)
{
    NET_BUF_SIMPLE_DBG("buf %p len %u", buf, len);

    NET_BUF_SIMPLE_ASSERT(buf->len >= len);

    buf->len -= len;
    return buf->data += len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf {int ref; int pool; } ;


 int NET_BUF_ASSERT (struct net_buf*) ;
 int NET_BUF_DBG (char*,struct net_buf*,int ,int ) ;

struct net_buf *net_buf_ref(struct net_buf *buf)
{
    NET_BUF_ASSERT(buf);

    NET_BUF_DBG("buf %p (old) ref %u pool %p", buf, buf->ref, buf->pool);

    buf->ref++;
    return buf;
}

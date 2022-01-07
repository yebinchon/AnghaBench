
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf {scalar_t__ flags; int b; int * frags; } ;


 int NET_BUF_ASSERT (int) ;
 int net_buf_simple_reset (int *) ;

void net_buf_reset(struct net_buf *buf)
{
    NET_BUF_ASSERT(buf->flags == 0);
    NET_BUF_ASSERT(buf->frags == ((void*)0));

    net_buf_simple_reset(&buf->b);
}

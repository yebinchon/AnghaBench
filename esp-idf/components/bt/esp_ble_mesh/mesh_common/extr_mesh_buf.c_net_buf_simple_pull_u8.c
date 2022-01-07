
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct net_buf_simple {int * data; } ;


 int net_buf_simple_pull (struct net_buf_simple*,int) ;

u8_t net_buf_simple_pull_u8(struct net_buf_simple *buf)
{
    u8_t val;

    val = buf->data[0];
    net_buf_simple_pull(buf, 1);

    return val;
}

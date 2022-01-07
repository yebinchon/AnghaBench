
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u16_t ;
struct net_buf_simple {scalar_t__ data; } ;


 int UNALIGNED_GET (int *) ;
 int net_buf_simple_pull (struct net_buf_simple*,int) ;
 int sys_le16_to_cpu (int ) ;

u16_t net_buf_simple_pull_le16(struct net_buf_simple *buf)
{
    u16_t val;

    val = UNALIGNED_GET((u16_t *)buf->data);
    net_buf_simple_pull(buf, sizeof(val));

    return sys_le16_to_cpu(val);
}

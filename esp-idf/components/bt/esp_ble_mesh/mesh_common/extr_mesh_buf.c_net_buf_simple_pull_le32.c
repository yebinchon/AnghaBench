
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32_t ;
struct net_buf_simple {scalar_t__ data; } ;


 int UNALIGNED_GET (int *) ;
 int net_buf_simple_pull (struct net_buf_simple*,int) ;
 int sys_le32_to_cpu (int ) ;

u32_t net_buf_simple_pull_le32(struct net_buf_simple *buf)
{
    u32_t val;

    val = UNALIGNED_GET((u32_t *)buf->data);
    net_buf_simple_pull(buf, sizeof(val));

    return sys_le32_to_cpu(val);
}

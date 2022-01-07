
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u16_t ;
struct net_buf_simple {int dummy; } ;


 int NET_BUF_SIMPLE_DBG (char*,struct net_buf_simple*,int ) ;
 int memcpy (int ,int *,int) ;
 int net_buf_simple_add (struct net_buf_simple*,int) ;
 int sys_cpu_to_le16 (int ) ;

void net_buf_simple_add_le16(struct net_buf_simple *buf, u16_t val)
{
    NET_BUF_SIMPLE_DBG("buf %p val %u", buf, val);

    val = sys_cpu_to_le16(val);
    memcpy(net_buf_simple_add(buf, sizeof(val)), &val, sizeof(val));
}

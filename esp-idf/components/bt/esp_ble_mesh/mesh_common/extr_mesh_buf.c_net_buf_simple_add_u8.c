
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct net_buf_simple {int dummy; } ;


 int NET_BUF_SIMPLE_DBG (char*,struct net_buf_simple*,int ) ;
 int * net_buf_simple_add (struct net_buf_simple*,int) ;

u8_t *net_buf_simple_add_u8(struct net_buf_simple *buf, u8_t val)
{
    u8_t *u8;

    NET_BUF_SIMPLE_DBG("buf %p val 0x%02x", buf, val);

    u8 = net_buf_simple_add(buf, 1);
    *u8 = val;

    return u8;
}

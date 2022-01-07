
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct net_buf_simple {int * data; } ;


 int net_buf_simple_pull (struct net_buf_simple*,int) ;
 int sys_get_le16 (int *) ;

__attribute__((used)) static inline void key_idx_unpack(struct net_buf_simple *buf,
                                  u16_t *idx1, u16_t *idx2)
{
    *idx1 = sys_get_le16(&buf->data[0]) & 0xfff;
    *idx2 = sys_get_le16(&buf->data[1]) >> 4;
    net_buf_simple_pull(buf, 3);
}

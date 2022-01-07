
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct net_buf_simple {int dummy; } ;


 int net_buf_simple_add_be16 (struct net_buf_simple*,int) ;
 int net_buf_simple_add_le16 (struct net_buf_simple*,int) ;
 int net_buf_simple_add_u8 (struct net_buf_simple*,int) ;
 int net_buf_simple_init (struct net_buf_simple*,int ) ;

void bt_mesh_model_msg_init(struct net_buf_simple *msg, u32_t opcode)
{
    net_buf_simple_init(msg, 0);

    if (opcode < 0x100) {

        net_buf_simple_add_u8(msg, opcode);
        return;
    }

    if (opcode < 0x10000) {

        net_buf_simple_add_be16(msg, opcode);
        return;
    }


    net_buf_simple_add_u8(msg, ((opcode >> 16) & 0xff));
    net_buf_simple_add_le16(msg, opcode & 0xffff);
}

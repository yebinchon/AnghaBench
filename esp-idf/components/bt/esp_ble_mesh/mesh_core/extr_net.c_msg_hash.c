
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64_t ;
typedef int u32_t ;
struct net_buf_simple {int* data; } ;
struct bt_mesh_net_rx {int dummy; } ;


 int BLE_MESH_NET_IVI_RX (struct bt_mesh_net_rx*) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static u64_t msg_hash(struct bt_mesh_net_rx *rx, struct net_buf_simple *pdu)
{
    u32_t hash1, hash2;


    hash1 = (BLE_MESH_NET_IVI_RX(rx) << 8) | pdu->data[2];


    memcpy(&hash2, &pdu->data[3], 4);

    return (u64_t)hash1 << 32 | (u64_t)hash2;
}

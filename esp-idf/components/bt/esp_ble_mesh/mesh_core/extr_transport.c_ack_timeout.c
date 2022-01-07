
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8_t ;
struct seg_rx {scalar_t__ ttl; unsigned int seg_n; int block; } ;
typedef int s32_t ;


 scalar_t__ BLE_MESH_TTL_DEFAULT ;
 int K_MSEC (int) ;
 int MAX (int ,int ) ;
 unsigned int bt_mesh_default_ttl_get () ;
 unsigned int popcount (int ) ;

__attribute__((used)) static inline s32_t ack_timeout(struct seg_rx *rx)
{
    s32_t to;
    u8_t ttl;

    if (rx->ttl == BLE_MESH_TTL_DEFAULT) {
        ttl = bt_mesh_default_ttl_get();
    } else {
        ttl = rx->ttl;
    }




    to = K_MSEC(150 + (ttl * 50U));


    to += K_MSEC(((rx->seg_n + 1) - popcount(rx->block)) * 100U);




    return MAX(to, K_MSEC(400));
}

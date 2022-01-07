
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct net_buf {int dummy; } ;
typedef int s32_t ;
typedef enum bt_mesh_adv_type { ____Placeholder_bt_mesh_adv_type } bt_mesh_adv_type ;


 int adv_alloc ;
 int adv_buf_pool ;
 struct net_buf* bt_mesh_adv_create_from_pool (int *,int ,int,int ,int ) ;

struct net_buf *bt_mesh_adv_create(enum bt_mesh_adv_type type, u8_t xmit,
                                   s32_t timeout)
{
    return bt_mesh_adv_create_from_pool(&adv_buf_pool, adv_alloc, type,
                                        xmit, timeout);
}

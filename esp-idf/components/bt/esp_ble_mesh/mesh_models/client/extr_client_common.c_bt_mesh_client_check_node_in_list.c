
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16_t ;
typedef int sys_snode_t ;
typedef int sys_slist_t ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ bt_mesh_client_node_t ;


 scalar_t__ sys_slist_is_empty (int *) ;
 int * sys_slist_peek_head (int *) ;
 int * sys_slist_peek_next (int *) ;

__attribute__((used)) static bool bt_mesh_client_check_node_in_list(sys_slist_t *list, u16_t tx_dst)
{
    if (sys_slist_is_empty(list)) {
        return 0;
    }

    sys_snode_t *cur = ((void*)0); bt_mesh_client_node_t *node = ((void*)0);
    for (cur = sys_slist_peek_head(list);
            cur != ((void*)0); cur = sys_slist_peek_next(cur)) {
        node = (bt_mesh_client_node_t *)cur;
        if (node->ctx.addr == tx_dst) {
            return 1;
        }
    }

    return 0;
}

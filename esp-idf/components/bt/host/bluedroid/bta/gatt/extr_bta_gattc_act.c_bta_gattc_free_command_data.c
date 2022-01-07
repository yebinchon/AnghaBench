
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_3__ {int * p_q_cmd; int p_cmd_list; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;
typedef int list_node_t ;


 int assert (int ) ;
 int * list_begin (int ) ;
 int * list_end (int ) ;
 int list_is_empty (int ) ;
 int * list_next (int *) ;
 scalar_t__ list_node (int *) ;
 int list_remove (int ,void*) ;
 int osi_free (int *) ;

void bta_gattc_free_command_data(tBTA_GATTC_CLCB *p_clcb)
{
    assert(p_clcb->p_cmd_list);

    if (!list_is_empty(p_clcb->p_cmd_list)) {


        for (list_node_t *node = list_begin(p_clcb->p_cmd_list); node != list_end(p_clcb->p_cmd_list);
             node = list_next(node)) {
            tBTA_GATTC_DATA *p_data = (tBTA_GATTC_DATA *)list_node(node);
            if (p_data == p_clcb->p_q_cmd) {
                list_remove(p_clcb->p_cmd_list, (void *)p_data);
                p_clcb->p_q_cmd = ((void*)0);
                return;
            }
        }

        osi_free(p_clcb->p_q_cmd);
        p_clcb->p_q_cmd = ((void*)0);
    } else {
        osi_free(p_clcb->p_q_cmd);
        p_clcb->p_q_cmd = ((void*)0);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ resolving_list_index; int in_controller_list; } ;
struct TYPE_6__ {TYPE_1__ ble; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_7__ {int (* supports_ble_privacy ) () ;} ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_RESOLVING_LIST_BIT ;
 int btm_ble_clear_irk_index (scalar_t__) ;
 scalar_t__ btm_ble_find_irk_index () ;
 TYPE_2__* btm_find_dev (int ) ;
 TYPE_3__* controller_get_interface () ;
 int stub1 () ;
 int stub2 () ;

void btm_ble_update_resolving_list(BD_ADDR pseudo_bda, BOOLEAN add)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev(pseudo_bda);
    if (p_dev_rec == ((void*)0)) {
        return;
    }

    if (add) {
        p_dev_rec->ble.in_controller_list |= BTM_RESOLVING_LIST_BIT;
        if (!controller_get_interface()->supports_ble_privacy()) {
            p_dev_rec->ble.resolving_list_index = btm_ble_find_irk_index();
        }
    } else {
        p_dev_rec->ble.in_controller_list &= ~BTM_RESOLVING_LIST_BIT;
        if (!controller_get_interface()->supports_ble_privacy()) {

            btm_ble_clear_irk_index(p_dev_rec->ble.resolving_list_index);
            p_dev_rec->ble.resolving_list_index = 0;
        }
    }
}

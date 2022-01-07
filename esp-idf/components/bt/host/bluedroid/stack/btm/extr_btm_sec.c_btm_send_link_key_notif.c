
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int link_key_type; int link_key; int sec_bd_name; int dev_class; int bd_addr; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_5__ {int (* p_link_key_callback ) (int ,int ,int ,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ api; } ;


 TYPE_4__ btm_cb ;
 int stub1 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void btm_send_link_key_notif (tBTM_SEC_DEV_REC *p_dev_rec)
{
    if (btm_cb.api.p_link_key_callback) {
        (*btm_cb.api.p_link_key_callback) (p_dev_rec->bd_addr, p_dev_rec->dev_class,
                                           p_dev_rec->sec_bd_name, p_dev_rec->link_key,
                                           p_dev_rec->link_key_type);
    }
}

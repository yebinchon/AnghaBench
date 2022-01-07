
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {int dev_class; } ;
struct TYPE_6__ {TYPE_1__ devcb; } ;
struct TYPE_5__ {int (* get_is_ready ) () ;} ;
typedef int DEV_CLASS ;


 int BTM_DEV_RESET ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int DEV_CLASS_LEN ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_write_dev_class (int ) ;
 TYPE_2__* controller_get_interface () ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int stub1 () ;

tBTM_STATUS BTM_SetDeviceClass (DEV_CLASS dev_class)
{
    if (!memcmp (btm_cb.devcb.dev_class, dev_class, DEV_CLASS_LEN)) {
        return (BTM_SUCCESS);
    }

    memcpy (btm_cb.devcb.dev_class, dev_class, DEV_CLASS_LEN);

    if (!controller_get_interface()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }

    if (!btsnd_hcic_write_dev_class (dev_class)) {
        return (BTM_NO_RESOURCES);
    }

    return (BTM_SUCCESS);
}

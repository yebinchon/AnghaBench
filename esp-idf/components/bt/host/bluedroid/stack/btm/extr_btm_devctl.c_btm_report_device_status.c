
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* tBTM_DEV_STATUS_CB ) (int ) ;
typedef int tBTM_DEV_STATUS ;
struct TYPE_3__ {int (* p_dev_status_cb ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 TYPE_2__ btm_cb ;
 int stub1 (int ) ;

void btm_report_device_status (tBTM_DEV_STATUS status)
{
    tBTM_DEV_STATUS_CB *p_cb = btm_cb.devcb.p_dev_status_cb;


    if (p_cb) {
        (*p_cb)(status);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loc_io_caps; } ;
struct TYPE_6__ {int security_mode; TYPE_1__ devcb; } ;
struct TYPE_5__ {scalar_t__ (* supports_simple_pairing ) () ;} ;


 int BTM_LOCAL_IO_CAPS ;
 int BTM_SEC_MODE_SERVICE ;
 int BTM_SEC_NONE ;
 int BTM_SEC_PROTO_RFCOMM ;
 int BTM_SEC_SERVICE_RFC_MUX ;
 int BTM_SetSecurityLevel (int ,char*,int ,int ,int ,int ,int ) ;
 int BTM_TRACE_DEBUG (char*,int ) ;
 int BT_PSM_RFCOMM ;
 int FALSE ;
 TYPE_3__ btm_cb ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ stub1 () ;

void btm_sec_dev_reset (void)
{
    if (controller_get_interface()->supports_simple_pairing()) {

        btm_cb.devcb.loc_io_caps = BTM_LOCAL_IO_CAPS;

        BTM_SetSecurityLevel(FALSE, "RFC_MUX\n", BTM_SEC_SERVICE_RFC_MUX,
                             BTM_SEC_NONE, BT_PSM_RFCOMM, BTM_SEC_PROTO_RFCOMM, 0);
    } else {
        btm_cb.security_mode = BTM_SEC_MODE_SERVICE;
    }

    BTM_TRACE_DEBUG ("btm_sec_dev_reset sec mode: %d\n", btm_cb.security_mode);
}

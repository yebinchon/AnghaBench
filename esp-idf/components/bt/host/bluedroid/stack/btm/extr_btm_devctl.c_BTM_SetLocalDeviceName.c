
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int UINT8 ;
struct TYPE_4__ {char* bd_name; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct TYPE_5__ {int (* get_is_ready ) () ;} ;


 int BCM_STRNCPY_S (char*,int,char*,size_t) ;
 scalar_t__ BD_NAME_LEN ;
 int BTM_CMD_STARTED ;
 int BTM_DEV_RESET ;
 int BTM_ILLEGAL_VALUE ;
 size_t BTM_MAX_LOC_BD_NAME_LEN ;
 int BTM_NO_RESOURCES ;
 TYPE_3__ btm_cb ;
 scalar_t__ btsnd_hcic_change_name (int *) ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ strlen (char*) ;
 int stub1 () ;

tBTM_STATUS BTM_SetLocalDeviceName (char *p_name)
{
    UINT8 *p;

    if (!p_name || !p_name[0] || (strlen ((char *)p_name) > BD_NAME_LEN)) {
        return (BTM_ILLEGAL_VALUE);
    }

    if (!controller_get_interface()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }
    p = (UINT8 *)p_name;


    if (btsnd_hcic_change_name(p)) {
        return (BTM_CMD_STARTED);
    } else {
        return (BTM_NO_RESOURCES);
    }
}

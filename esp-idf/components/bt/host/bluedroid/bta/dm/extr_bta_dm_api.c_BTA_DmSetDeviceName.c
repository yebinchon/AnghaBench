
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {scalar_t__* name; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_NAME ;


 int BCM_STRNCPY_S (char*,int,char const*,int) ;
 int BD_NAME_LEN ;
 int BTA_DM_API_SET_NAME_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetDeviceName(const char *p_name)
{

    tBTA_DM_API_SET_NAME *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_NAME *) osi_malloc(sizeof(tBTA_DM_API_SET_NAME))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_SET_NAME_EVT;

        BCM_STRNCPY_S((char *)p_msg->name, sizeof(p_msg->name), p_name, BD_NAME_LEN - 1);
        p_msg->name[BD_NAME_LEN - 1] = 0;

        bta_sys_sendmsg(p_msg);
    }
}

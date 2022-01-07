
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SEC ;
typedef int tBTA_HF_CLIENT_FEAT ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {char* name; int sec_mask; int features; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_API_REGISTER ;


 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int BTA_HF_CLIENT_API_REGISTER_EVT ;
 int BTA_SERVICE_NAME_LEN ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_HfClientRegister(tBTA_SEC sec_mask, tBTA_HF_CLIENT_FEAT features,
                          char *p_service_name)
{
    tBTA_HF_CLIENT_API_REGISTER *p_buf;

    if ((p_buf = (tBTA_HF_CLIENT_API_REGISTER *) osi_malloc(sizeof(tBTA_HF_CLIENT_API_REGISTER))) != ((void*)0)) {
        p_buf->hdr.event = BTA_HF_CLIENT_API_REGISTER_EVT;
        p_buf->features = features;
        p_buf->sec_mask = sec_mask;
        if (p_service_name) {
            BCM_STRNCPY_S(p_buf->name, BTA_SERVICE_NAME_LEN + 1, p_service_name, BTA_SERVICE_NAME_LEN);
            p_buf->name[BTA_SERVICE_NAME_LEN] = 0;
        } else {
            p_buf->name[0] = '\0';
        }
        bta_sys_sendmsg(p_buf);
    }
}

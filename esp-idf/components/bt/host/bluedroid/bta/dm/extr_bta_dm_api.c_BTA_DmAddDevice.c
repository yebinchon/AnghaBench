
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
typedef int tBTA_IO_CAP ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {void* pin_length; struct TYPE_6__* features; struct TYPE_6__* bd_name; int dc; void* dc_known; int link_key; void* key_type; void* link_key_known; int io_cap; int is_trusted; int tm; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_ADD_DEVICE ;
typedef void* UINT8 ;
typedef int LINK_KEY ;
typedef int DEV_CLASS ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_NAME_LEN ;
 int BTA_DM_API_ADD_DEVICE_EVT ;
 int DEV_CLASS_LEN ;
 int LINK_KEY_LEN ;
 void* TRUE ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmAddDevice(BD_ADDR bd_addr, DEV_CLASS dev_class, LINK_KEY link_key,
                     tBTA_SERVICE_MASK trusted_mask, BOOLEAN is_trusted,
                     UINT8 key_type, tBTA_IO_CAP io_cap, UINT8 pin_length)
{

    tBTA_DM_API_ADD_DEVICE *p_msg;

    if ((p_msg = (tBTA_DM_API_ADD_DEVICE *) osi_malloc(sizeof(tBTA_DM_API_ADD_DEVICE))) != ((void*)0)) {
        memset (p_msg, 0, sizeof(tBTA_DM_API_ADD_DEVICE));

        p_msg->hdr.event = BTA_DM_API_ADD_DEVICE_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->tm = trusted_mask;
        p_msg->is_trusted = is_trusted;
        p_msg->io_cap = io_cap;

        if (link_key) {
            p_msg->link_key_known = TRUE;
            p_msg->key_type = key_type;
            memcpy(p_msg->link_key, link_key, LINK_KEY_LEN);
        }


        if (dev_class) {
            p_msg->dc_known = TRUE;
            memcpy (p_msg->dc, dev_class, DEV_CLASS_LEN);
        }

        memset (p_msg->bd_name, 0, BD_NAME_LEN + 1);
        memset (p_msg->features, 0, sizeof (p_msg->features));
        p_msg->pin_length = pin_length;

        bta_sys_sendmsg(p_msg);
    }
}

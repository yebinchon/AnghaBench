
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer_specific; int event; } ;
struct TYPE_5__ {char* str; TYPE_1__ hdr; void* uint32_val2; void* uint32_val1; int uint8_val; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_DATA_VAL ;
typedef int tBTA_HF_CLIENT_AT_CMD_TYPE ;
typedef void* UINT32 ;
typedef int UINT16 ;


 int BTA_HF_CLIENT_NUMBER_LEN ;
 int BTA_HF_CLIENT_SEND_AT_CMD_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;
 int strlcpy (char*,char const*,int) ;

void BTA_HfClientSendAT(UINT16 handle, tBTA_HF_CLIENT_AT_CMD_TYPE at, UINT32 val1, UINT32 val2, const char *str)
{
    tBTA_HF_CLIENT_DATA_VAL *p_buf;

    if ((p_buf = (tBTA_HF_CLIENT_DATA_VAL *) osi_malloc(sizeof(tBTA_HF_CLIENT_DATA_VAL))) != ((void*)0)) {
        p_buf->hdr.event = BTA_HF_CLIENT_SEND_AT_CMD_EVT;
        p_buf->uint8_val = at;
        p_buf->uint32_val1 = val1;
        p_buf->uint32_val2 = val2;

        if (str) {
            strlcpy(p_buf->str, str, BTA_HF_CLIENT_NUMBER_LEN + 1);
            p_buf->str[BTA_HF_CLIENT_NUMBER_LEN] = '\0';
        } else {
            p_buf->str[0] = '\0';
        }

        p_buf->hdr.layer_specific = handle;
        bta_sys_sendmsg(p_buf);
    }
}

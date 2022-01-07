
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_AG_RES_DATA ;
typedef int tBTA_AG_RES ;
struct TYPE_4__ {int layer_specific; int event; } ;
struct TYPE_5__ {int data; int result; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_AG_API_RESULT ;
typedef int UINT16 ;


 int BTA_AG_API_RESULT_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_AgResult(UINT16 handle, tBTA_AG_RES result, tBTA_AG_RES_DATA *p_data)
{
    tBTA_AG_API_RESULT *p_buf;



    if ((p_buf = (tBTA_AG_API_RESULT *) osi_malloc(sizeof(tBTA_AG_API_RESULT))) != ((void*)0)) {
        p_buf->hdr.event = BTA_AG_API_RESULT_EVT;
        p_buf->hdr.layer_specific = handle;
        p_buf->result = result;
        if(p_data) {
            memcpy(&p_buf->data, p_data, sizeof(p_buf->data));
        }
        bta_sys_sendmsg(p_buf);
    }
}

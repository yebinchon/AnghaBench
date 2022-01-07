
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tGATT_CL_COMPLETE ;
typedef int tGATTC_OPTYPE ;
typedef int tBTA_GATT_STATUS ;
struct TYPE_5__ {int layer_specific; int event; } ;
struct TYPE_6__ {int * p_cmpl; int op_code; int status; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_GATTC_OP_CMPL ;
typedef int UINT16 ;


 int BTA_GATTC_OP_CMPL_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int const) ;
 scalar_t__ osi_malloc (int const) ;

__attribute__((used)) static void bta_gattc_cmpl_sendmsg(UINT16 conn_id, tGATTC_OPTYPE op,
                                   tBTA_GATT_STATUS status,
                                   tGATT_CL_COMPLETE *p_data)
{
    const UINT16 len = sizeof(tBTA_GATTC_OP_CMPL) + sizeof(tGATT_CL_COMPLETE);
    tBTA_GATTC_OP_CMPL *p_buf = (tBTA_GATTC_OP_CMPL *) osi_malloc(len);

    if (p_buf != ((void*)0)) {
        memset(p_buf, 0, len);
        p_buf->hdr.event = BTA_GATTC_OP_CMPL_EVT;
        p_buf->hdr.layer_specific = conn_id;
        p_buf->status = status;
        p_buf->op_code = op;

        if (p_data != ((void*)0)) {
            p_buf->p_cmpl = (tGATT_CL_COMPLETE *)(p_buf + 1);
            memcpy(p_buf->p_cmpl, p_data, sizeof(tGATT_CL_COMPLETE));
        }

        bta_sys_sendmsg(p_buf);
    }
}

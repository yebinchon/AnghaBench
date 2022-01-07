
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ conn_service; int conn_handle; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int buf ;
typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {char* p_res; scalar_t__ fmt; } ;
typedef scalar_t__ INT16 ;


 int APPL_TRACE_DEBUG (char*,...) ;
 int BCM_STRCPY_S (char*,int,char*) ;
 int BTA_AG_AT_MAX_LEN ;
 scalar_t__ BTA_AG_HSP ;
 scalar_t__ BTA_AG_RES_FMT_INT ;
 scalar_t__ BTA_AG_RES_FMT_STR ;


 int COLON_IDX_4_VGSVGM ;
 int PORT_WriteData (int ,char*,int ,int *) ;
 TYPE_3__* bta_ag_result_tbl ;
 int memset (char*,int *,int) ;
 int strlen (char*) ;
 int utl_itoa (int ,char*) ;

__attribute__((used)) static void bta_ag_send_result(tBTA_AG_SCB *p_scb, UINT8 code, char *p_arg, INT16 int_arg)
{
    char buf[BTA_AG_AT_MAX_LEN + 16];
    char *p = buf;
    UINT16 len;

    memset(buf, ((void*)0), sizeof(buf));


    *p++ = '\r';
    *p++ = '\n';


    BCM_STRCPY_S(p, sizeof(buf), bta_ag_result_tbl[code].p_res);
    p += strlen(bta_ag_result_tbl[code].p_res);


    if (bta_ag_result_tbl[code].fmt == BTA_AG_RES_FMT_INT) {
        p += utl_itoa((UINT16) int_arg, p);
    } else if (bta_ag_result_tbl[code].fmt == BTA_AG_RES_FMT_STR) {
        BCM_STRCPY_S(p, sizeof(buf), p_arg);
        p += strlen(p_arg);
    }

    *p++ = '\r';
    *p++ = '\n';
    APPL_TRACE_DEBUG("bta_ag_send_result: %s", buf);

    PORT_WriteData(p_scb->conn_handle, buf, (UINT16) (p - buf), &len);
}

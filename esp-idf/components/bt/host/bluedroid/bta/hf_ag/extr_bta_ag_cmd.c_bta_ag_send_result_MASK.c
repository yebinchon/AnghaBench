#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ conn_service; int /*<<< orphan*/  conn_handle; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  buf ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_5__ {char* p_res; scalar_t__ fmt; } ;
typedef  scalar_t__ INT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  BTA_AG_AT_MAX_LEN ; 
 scalar_t__ BTA_AG_HSP ; 
 scalar_t__ BTA_AG_RES_FMT_INT ; 
 scalar_t__ BTA_AG_RES_FMT_STR ; 
#define  BTA_AG_RES_VGM 129 
#define  BTA_AG_RES_VGS 128 
 int /*<<< orphan*/  COLON_IDX_4_VGSVGM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* bta_ag_result_tbl ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(tBTA_AG_SCB *p_scb, UINT8 code, char *p_arg, INT16 int_arg)
{
    char    buf[BTA_AG_AT_MAX_LEN + 16];
    char    *p = buf;
    UINT16  len;
#if (BTIF_TRACE_DEBUG == TRUE)
    FUNC3(buf, NULL, sizeof(buf));
#endif
    /* init with \r\n */
    *p++ = '\r';
    *p++ = '\n';

    /* copy result code string */
    FUNC1(p, sizeof(buf), bta_ag_result_tbl[code].p_res);
#if defined(BTA_HSP_RESULT_REPLACE_COLON) && (BTA_HSP_RESULT_REPLACE_COLON == TRUE)
    if(p_scb->conn_service == BTA_AG_HSP) {
        /* If HSP then ":"symbol should be changed as "=" for HSP compatibility */
        switch(code) {
            case BTA_AG_RES_VGS:
            case BTA_AG_RES_VGM:
            {
                if(*(p+COLON_IDX_4_VGSVGM) == ':')
                {
                    #if defined(BTA_AG_RESULT_DEBUG) && (BTA_AG_RESULT_DEBUG == TRUE)
                    APPL_TRACE_DEBUG("[HSP] ':'symbol is changed as '=' for HSP compatibility");
                    #endif
                    *(p+COLON_IDX_4_VGSVGM) = '=';
                }
                break;
            }
        }
    }
#endif
    p += FUNC4(bta_ag_result_tbl[code].p_res);

    /* copy argument if any */
    if (bta_ag_result_tbl[code].fmt == BTA_AG_RES_FMT_INT) {
        p += FUNC5((UINT16) int_arg, p);
    } else if (bta_ag_result_tbl[code].fmt == BTA_AG_RES_FMT_STR) {
        FUNC1(p, sizeof(buf), p_arg);
        p += FUNC4(p_arg);
    }
    /* finish with \r\n */
    *p++ = '\r';
    *p++ = '\n';
    FUNC0("bta_ag_send_result: %s", buf);
    /* send to RFCOMM */
    FUNC2(p_scb->conn_handle, buf, (UINT16) (p - buf), &len);
}
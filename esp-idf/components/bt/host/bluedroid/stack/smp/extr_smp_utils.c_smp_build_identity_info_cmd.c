
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSMP_CB ;
typedef int * UINT8 ;
struct TYPE_3__ {int offset; int len; } ;
typedef int BT_OCTET16 ;
typedef TYPE_1__ BT_HDR ;


 int ARRAY_TO_STREAM (int **,int ,int ) ;
 int BTM_GetDeviceIDRoot (int ) ;
 int BT_OCTET16_LEN ;
 int L2CAP_MIN_OFFSET ;
 int SMP_ID_INFO_SIZE ;
 int SMP_OPCODE_IDENTITY_INFO ;
 int SMP_TRACE_EVENT (char*) ;
 int UINT8_TO_STREAM (int **,int ) ;
 int UNUSED (int *) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static BT_HDR *smp_build_identity_info_cmd(UINT8 cmd_code, tSMP_CB *p_cb)
{
    BT_HDR *p_buf = ((void*)0) ;

    UINT8 *p;
    BT_OCTET16 irk;
    UNUSED(cmd_code);
    UNUSED(p_cb);

    SMP_TRACE_EVENT("smp_build_identity_info_cmd\n");
    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + SMP_ID_INFO_SIZE + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        BTM_GetDeviceIDRoot(irk);

        UINT8_TO_STREAM (p, SMP_OPCODE_IDENTITY_INFO);
        ARRAY_TO_STREAM (p, irk, BT_OCTET16_LEN);

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = SMP_ID_INFO_SIZE;
    }


    return p_buf;
}

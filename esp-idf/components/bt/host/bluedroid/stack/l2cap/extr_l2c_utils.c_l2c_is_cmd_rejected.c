
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_LCB ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_CMD_REJ_MTU_EXCEEDED ;
 int L2CAP_DEFAULT_MTU ;
 int L2CAP_TRACE_WARNING (char*,int) ;
 int TRUE ;
 int l2cu_send_peer_cmd_reject (int *,int ,int,int ,int ) ;

BOOLEAN l2c_is_cmd_rejected (UINT8 cmd_code, UINT8 id, tL2C_LCB *p_lcb)
{
    switch (cmd_code) {
    case 131:
    case 132:
    case 130:
    case 129:
    case 128:
    case 135:
    case 134:
    case 133:
        l2cu_send_peer_cmd_reject (p_lcb, L2CAP_CMD_REJ_MTU_EXCEEDED, id, L2CAP_DEFAULT_MTU, 0);
        L2CAP_TRACE_WARNING ("Dumping first Command (%d)", cmd_code);
        return TRUE;

    default:
        return FALSE;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
__attribute__((used)) static char *l2c_csm_get_event_name (UINT16 event)
{
    switch (event) {
    case 138:
        return ("LOWER_LAYER_CONNECT_CFM");
    case 137:
        return ("LOWER_LAYER_CONNECT_CFM_NEG");
    case 136:
        return ("LOWER_LAYER_CONNECT_IND");
    case 135:
        return ("LOWER_LAYER_DISCONNECT_IND");
    case 134:
        return ("LOWER_LAYER_QOS_CFM");
    case 133:
        return ("LOWER_LAYER_QOS_CFM_NEG");
    case 132:
        return ("LOWER_LAYER_QOS_VIOLATION_IND");

    case 131:
        return ("SECURITY_COMPLETE");
    case 130:
        return ("SECURITY_COMPLETE_NEG");

    case 156:
        return ("PEER_CONNECT_REQ");
    case 155:
        return ("PEER_CONNECT_RSP");
    case 153:
        return ("PEER_CONNECT_RSP_PND");
    case 154:
        return ("PEER_CONNECT_RSP_NEG");
    case 159:
        return ("PEER_CONFIG_REQ");
    case 158:
        return ("PEER_CONFIG_RSP");
    case 157:
        return ("PEER_CONFIG_RSP_NEG");
    case 151:
        return ("PEER_DISCONNECT_REQ");
    case 150:
        return ("PEER_DISCONNECT_RSP");
    case 152:
        return ("PEER_DATA");

    case 145:
        return ("UPPER_LAYER_CONNECT_REQ");
    case 144:
        return ("UPPER_LAYER_CONNECT_RSP");
    case 143:
        return ("UPPER_LAYER_CONNECT_RSP_NEG");
    case 148:
        return ("UPPER_LAYER_CONFIG_REQ");
    case 147:
        return ("UPPER_LAYER_CONFIG_RSP");
    case 146:
        return ("UPPER_LAYER_CONFIG_RSP_NEG");
    case 140:
        return ("UPPER_LAYER_DISCONNECT_REQ");
    case 139:
        return ("UPPER_LAYER_DISCONNECT_RSP");
    case 142:
        return ("UPPER_LAYER_DATA_READ");
    case 141:
        return ("UPPER_LAYER_DATA_WRITE");
    case 128:
        return ("TIMEOUT");
    case 129:
        return ("SEC_RE_SEND_CMD");
    case 149:
        return ("L2CEVT_L2CAP_INFO_RSP");
    case 160:
        return ("L2CEVT_ACK_TIMEOUT");

    default:
        return ("???? UNKNOWN EVENT");
    }
}

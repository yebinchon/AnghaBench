
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_RES ;
typedef int UINT16 ;
__attribute__((used)) static char *bta_ag_evt_str(UINT16 event, tBTA_AG_RES result)
{
    switch (event)
    {
    case 165:
        return "Register Request";
    case 169:
        return "Deregister Request";
    case 166:
        return "Open SLC Request";
    case 170:
        return "Close SLC Request";
    case 171:
        return "Open Audio Request";
    case 172:
        return "Close Audio Request";
    case 164:
        switch (result) {
            case 130: return ("AT Result  BTA_AG_SPK_RES");
            case 141: return ("AT Result  BTA_AG_MIC_RES");
            case 145: return ("AT Result  BTA_AG_INBAND_RING_RES");
            case 157: return ("AT Result  BTA_AG_CIND_RES");
            case 162: return ("AT Result  BTA_AG_BINP_RES");
            case 144: return ("AT Result  BTA_AG_IND_RES");
            case 160: return ("AT Result  BTA_AG_BVRA_RES");
            case 152: return ("AT Result  BTA_AG_CNUM_RES");
            case 161: return ("AT Result  BTA_AG_BTRH_RES");
            case 153: return ("AT Result  BTA_AG_CLCC_RES");
            case 151: return ("AT Result  BTA_AG_COPS_RES");
            case 142: return ("AT Result  BTA_AG_IN_CALL_RES");
            case 143: return ("AT Result  BTA_AG_IN_CALL_CONN_RES");
            case 158: return ("AT Result  BTA_AG_CALL_WAIT_RES");
            case 138: return ("AT Result  BTA_AG_OUT_CALL_ORIG_RES");
            case 140: return ("AT Result  BTA_AG_OUT_CALL_ALERT_RES");
            case 139: return ("AT Result  BTA_AG_OUT_CALL_CONN_RES");
            case 159: return ("AT Result  BTA_AG_CALL_CANCEL_RES");
            case 146: return ("AT Result  BTA_AG_END_CALL_RES");
            case 128: return ("AT Result  BTA_AG_UNAT_RES");
            default: return ("Unknown AG Result");
        }
    case 163:
        return "Set Codec Request";
    case 135:
        return "RFC Opened";
    case 137:
        return "RFC Closed";
    case 134:
        return "RFC SRV Closed";
    case 136:
        return "RFC Data";
    case 131:
        return "Audio Opened";
    case 132:
        return "Audio Closed";
    case 150:
        return "Discovery ACP Result";
    case 148:
        return "Discovery INT Result";
    case 147:
        return "Discovery OK";
    case 149:
        return "Discovery Failed";
    case 156:
        return "CI RX Write";
    case 133:
        return "Ring Timeout";
    case 129:
        return "Service Timeout";
    case 167:
        return "Enable AG";
    case 168:
        return "Disable AG";
    case 155:
        return "SCO data Callin";
    case 154:
        return "SLC Ready Callin";
    default:
        return "Unknown AG Event";
    }
}

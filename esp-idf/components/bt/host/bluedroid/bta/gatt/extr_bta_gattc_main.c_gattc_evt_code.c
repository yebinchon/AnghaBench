
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_GATTC_INT_EVT ;
__attribute__((used)) static char *gattc_evt_code(tBTA_GATTC_INT_EVT evt_code)
{
    switch (evt_code) {
    case 142:
        return "BTA_GATTC_API_OPEN_EVT";
    case 130:
        return "BTA_GATTC_INT_OPEN_FAIL_EVT";
    case 150:
        return "BTA_GATTC_API_CANCEL_OPEN_EVT";
    case 134:
        return "BTA_GATTC_INT_CANCEL_OPEN_OK_EVT";
    case 141:
        return "BTA_GATTC_API_READ_EVT";
    case 136:
        return "BTA_GATTC_API_WRITE_EVT";
    case 144:
        return "BTA_GATTC_API_EXEC_EVT";
    case 148:
        return "BTA_GATTC_API_CLOSE_EVT";
    case 137:
        return "BTA_GATTC_API_SEARCH_EVT";
    case 147:
        return "BTA_GATTC_API_CONFIRM_EVT";
    case 140:
        return "BTA_GATTC_API_READ_MULTI_EVT";
    case 133:
        return "BTA_GATTC_INT_CONN_EVT";
    case 131:
        return "BTA_GATTC_INT_DISCOVER_EVT";
    case 135:
        return "BTA_GATTC_DISCOVER_CMPL_EVT";
    case 128:
        return "BTA_GATTC_OP_CMPL_EVT";
    case 132:
        return "BTA_GATTC_INT_DISCONN_EVT";
    case 129:
        return "BTA_GATTC_INT_START_IF_EVT";
    case 138:
        return "BTA_GATTC_API_REG_EVT";
    case 146:
        return "BTA_GATTC_API_DEREG_EVT";
    case 139:
        return "BTA_GATTC_API_REFRESH_EVT";
    case 151:
        return "BTA_GATTC_API_CACHE_CLEAN_EVT";
    case 143:
        return "BTA_GATTC_API_LISTEN_EVT";
    case 145:
        return "BTA_GATTC_API_DISABLE_EVT";
    case 149:
        return "BTA_GATTC_API_CFG_MTU_EVT";
    default:
        return "unknown GATTC event code";
    }
}

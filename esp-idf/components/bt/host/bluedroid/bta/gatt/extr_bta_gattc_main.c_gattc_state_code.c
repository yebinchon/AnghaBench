
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_GATTC_STATE ;







__attribute__((used)) static char *gattc_state_code(tBTA_GATTC_STATE state_code)
{
    switch (state_code) {
    case 129:
        return "GATTC_IDLE_ST";
    case 128:
        return "GATTC_W4_CONN_ST";
    case 131:
        return "GATTC_CONN_ST";
    case 130:
        return "GATTC_DISCOVER_ST";
    default:
        return "unknown GATTC state code";
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* SSL_alert_desc_string(int value)
{
    const char *str;

    switch (value & 0xff)
    {
        case 152:
            str = "CN";
            break;
        case 147:
            str = "UM";
            break;
        case 156:
            str = "BM";
            break;
        case 151:
            str = "DF";
            break;
        case 150:
            str = "HF";
            break;
        case 148:
            str = "NC";
            break;
        case 157:
            str = "BC";
            break;
        case 146:
            str = "UC";
            break;
        case 154:
            str = "CR";
            break;
        case 155:
            str = "CE";
            break;
        case 153:
            str = "CU";
            break;
        case 149:
            str = "IP";
            break;
        case 140:
            str = "DC";
            break;
        case 133:
            str = "RO";
            break;
        case 132:
            str = "CA";
            break;
        case 145:
            str = "AD";
            break;
        case 141:
            str = "DE";
            break;
        case 139:
            str = "CY";
            break;
        case 138:
            str = "ER";
            break;
        case 134:
            str = "PV";
            break;
        case 137:
            str = "IS";
            break;
        case 136:
            str = "IE";
            break;
        case 128:
            str = "US";
            break;
        case 135:
            str = "NR";
            break;
        case 129:
            str = "UE";
            break;
        case 142:
            str = "CO";
            break;
        case 130:
            str = "UN";
            break;
        case 143:
            str = "BR";
            break;
        case 144:
            str = "BH";
            break;
        case 131:
            str = "UP";
            break;
        default:
            str = "UK";
            break;
    }

    return str;
}

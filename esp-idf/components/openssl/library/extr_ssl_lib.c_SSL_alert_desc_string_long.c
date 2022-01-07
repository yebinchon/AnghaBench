
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* SSL_alert_desc_string_long(int value)
{
    const char *str;

    switch (value & 0xff)
    {
        case 152:
            str = "close notify";
            break;
        case 147:
            str = "unexpected_message";
            break;
        case 156:
            str = "bad record mac";
            break;
        case 151:
            str = "decompression failure";
            break;
        case 150:
            str = "handshake failure";
            break;
        case 148:
            str = "no certificate";
            break;
        case 157:
            str = "bad certificate";
            break;
        case 146:
            str = "unsupported certificate";
            break;
        case 154:
            str = "certificate revoked";
            break;
        case 155:
            str = "certificate expired";
            break;
        case 153:
            str = "certificate unknown";
            break;
        case 149:
            str = "illegal parameter";
            break;
        case 140:
            str = "decryption failed";
            break;
        case 133:
            str = "record overflow";
            break;
        case 132:
            str = "unknown CA";
            break;
        case 145:
            str = "access denied";
            break;
        case 141:
            str = "decode error";
            break;
        case 139:
            str = "decrypt error";
            break;
        case 138:
            str = "export restriction";
            break;
        case 134:
            str = "protocol version";
            break;
        case 137:
            str = "insufficient security";
            break;
        case 136:
            str = "internal error";
            break;
        case 128:
            str = "user canceled";
            break;
        case 135:
            str = "no renegotiation";
            break;
        case 129:
            str = "unsupported extension";
            break;
        case 142:
            str = "certificate unobtainable";
            break;
        case 130:
            str = "unrecognized name";
            break;
        case 143:
            str = "bad certificate status response";
            break;
        case 144:
            str = "bad certificate hash value";
            break;
        case 131:
            str = "unknown PSK identity";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}

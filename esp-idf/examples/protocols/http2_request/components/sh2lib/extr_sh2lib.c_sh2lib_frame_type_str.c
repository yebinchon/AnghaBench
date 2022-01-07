
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *sh2lib_frame_type_str(int type)
{
    switch (type) {
    case 132:
        return "HEADERS";
        break;
    case 129:
        return "RST_STREAM";
        break;
    case 133:
        return "GOAWAY";
        break;
    case 134:
        return "DATA";
        break;
    case 128:
        return "SETTINGS";
        break;
    case 130:
        return "PUSH_PROMISE";
        break;
    case 131:
        return "PING";
        break;
    default:
        return "other";
        break;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *type_string(int type)
{
    switch (type) {
    case 136:
        return "<DIR>";
    case 135:
        return "<FILE>";
    case 138:
        return "<BLOCK DEVICE>";
    case 137:
        return "<CHARACTER DEVICE>";
    case 134:
        return "<PIPE>";
    case 130:
        return "<LINK>";
    case 131:
        return "<SOCKET>";
    case 133:
        return "<SERVER>";
    case 132:
        return "<SHARE>";
    case 128:
        return "<WORKGROUP>";
    case 129:
    default:
        break;
    }
    return "<UNKNOWN>";
}

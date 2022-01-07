
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SSL_alert_type_string(int value)
{
    const char *str;

    switch (value >> 8)
    {
    case 128:
        str = "W";
        break;
    case 129:
        str = "F";
        break;
    default:
        str = "U";
        break;
    }

    return str;
}

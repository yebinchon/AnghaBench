
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SSL_alert_type_string_long(int value)
{
    const char *str;

    switch (value >> 8)
    {
        case 128:
            str = "warning";
            break;
        case 129:
            str = "fatal";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}

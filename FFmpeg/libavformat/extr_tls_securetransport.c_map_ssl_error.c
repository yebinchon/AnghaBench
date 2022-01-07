
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSStatus ;







__attribute__((used)) static int map_ssl_error(OSStatus status, size_t processed)
{
    switch (status) {
    case 128:
        return processed;
    case 131:
    case 130:
        return 0;
    case 129:
        if (processed > 0)
            return processed;
    default:
        return (int)status;
    }
}

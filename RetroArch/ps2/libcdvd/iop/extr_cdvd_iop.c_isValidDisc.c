
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceCdGetDiskType () ;

int isValidDisc(void)
{
    int result;

    switch (sceCdGetDiskType()) {
        case 129:
        case 128:
        case 132:
        case 131:
        case 130:
            result = 1;
            break;
        default:
            result = 0;
    }

    return result;
}

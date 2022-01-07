
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool process_again(int status_code)
{
    switch (status_code) {
        case 129:
        case 130:
        case 128:
            return 1;
        default:
            return 0;
    }
    return 0;
}

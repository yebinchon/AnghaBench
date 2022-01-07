
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_profile_font_size(int profile)
{
    switch (profile) {
    case 129:
        return 36;
    case 128:
        return 18;
    default:
        return 0;
    }
}

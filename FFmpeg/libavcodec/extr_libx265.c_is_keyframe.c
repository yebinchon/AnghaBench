
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NalUnitType ;
__attribute__((used)) static int is_keyframe(NalUnitType naltype)
{
    switch (naltype) {
    case 132:
    case 131:
    case 133:
    case 128:
    case 129:
    case 130:
        return 1;
    default:
        return 0;
    }
}

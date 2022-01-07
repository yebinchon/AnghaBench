
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int avfmt2_num_planes(int avfmt)
{
    switch (avfmt) {
    case 132:
    case 128:
    case 130:
    case 131:
    case 129:
        return 3;

    case 137:
    case 136:
    case 133:
    case 134:
    case 135:
        return 1;

    default:
        return 3;
    }
}

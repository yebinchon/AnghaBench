
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_get_matrix_name(int matrix)
{
    switch (matrix)
    {
        case 133:
            return "bt709";
        case 132:
            return "fcc";
        case 134:
            return "bt470bg";
        case 130:
            return "smpte170m";
        case 129:
            return "smpte240m";
        case 128:
            return "ycgco";
        case 131:
            return "gbr";
        case 135:
            return "bt2020ncl";
        default:
            return ((void*)0);
    }
}

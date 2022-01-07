
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_get_format_name(int format)
{
    switch (format)
    {
        case 136:
            return "yuv420p";
        case 135:
            return "yuv420p10";
        case 134:
            return "yuv420p12";
        case 133:
            return "yuv422p";
        case 132:
            return "yuv422p10";
        case 131:
            return "yuv422p12";
        case 130:
            return "yuv444p";
        case 129:
            return "yuv444p10";
        case 128:
            return "yuv444p12";
        default:
            return ((void*)0);
    }
}

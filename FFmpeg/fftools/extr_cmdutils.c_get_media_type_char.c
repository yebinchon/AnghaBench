
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
__attribute__((used)) static char get_media_type_char(enum AVMediaType type)
{
    switch (type) {
        case 128: return 'V';
        case 131: return 'A';
        case 130: return 'D';
        case 129: return 'S';
        case 132:return 'T';
        default: return '?';
    }
}

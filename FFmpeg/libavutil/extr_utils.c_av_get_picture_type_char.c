
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPictureType { ____Placeholder_AVPictureType } AVPictureType ;
char av_get_picture_type_char(enum AVPictureType pict_type)
{
    switch (pict_type) {
    case 132: return 'I';
    case 131: return 'P';
    case 134: return 'B';
    case 130: return 'S';
    case 129: return 'i';
    case 128: return 'p';
    case 133: return 'b';
    default: return '?';
    }
}

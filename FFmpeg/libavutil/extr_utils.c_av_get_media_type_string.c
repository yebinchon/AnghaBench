
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
const char *av_get_media_type_string(enum AVMediaType media_type)
{
    switch (media_type) {
    case 128: return "video";
    case 131: return "audio";
    case 130: return "data";
    case 129: return "subtitle";
    case 132: return "attachment";
    default: return ((void*)0);
    }
}

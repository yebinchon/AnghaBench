
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;


 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_VIDEO ;

__attribute__((used)) static char *avi_stream2fourcc(char *tag, int index, enum AVMediaType type)
{
    tag[0] = '0' + index / 10;
    tag[1] = '0' + index % 10;
    if (type == AVMEDIA_TYPE_VIDEO) {
        tag[2] = 'd';
        tag[3] = 'c';
    } else if (type == AVMEDIA_TYPE_SUBTITLE) {

        tag[2] = 's';
        tag[3] = 'b';
    } else {
        tag[2] = 'w';
        tag[3] = 'b';
    }
    tag[4] = '\0';
    return tag;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecParser ;


 int ** parser_list ;

const AVCodecParser *av_parser_iterate(void **opaque)
{
    uintptr_t i = (uintptr_t)*opaque;
    const AVCodecParser *p = parser_list[i];

    if (p)
        *opaque = (void*)(i + 1);

    return p;
}

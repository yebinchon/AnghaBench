
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iformat; } ;
typedef TYPE_1__ AVFormatContext ;
typedef int AVClassCategory ;


 int AV_CLASS_CATEGORY_DEMUXER ;
 int AV_CLASS_CATEGORY_MUXER ;

__attribute__((used)) static AVClassCategory get_category(void *ptr)
{
    AVFormatContext* s = ptr;
    if(s->iformat) return AV_CLASS_CATEGORY_DEMUXER;
    else return AV_CLASS_CATEGORY_MUXER;
}

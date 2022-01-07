
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ass; struct TYPE_4__** data; } ;
typedef TYPE_1__ AVSubtitleRect ;


 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void subtitle_rect_free(AVSubtitleRect **sub_rect)
{
    av_freep(&(*sub_rect)->data[0]);
    av_freep(&(*sub_rect)->data[1]);
    av_freep(&(*sub_rect)->ass);
    av_freep(sub_rect);
}

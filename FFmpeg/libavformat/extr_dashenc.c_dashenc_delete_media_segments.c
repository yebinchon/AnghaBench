
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int file; } ;
struct TYPE_6__ {int nb_segments; TYPE_2__** segments; } ;
typedef TYPE_1__ OutputStream ;
typedef int AVFormatContext ;


 int av_free (TYPE_2__*) ;
 int dashenc_delete_segment_file (int *,int ) ;
 int memmove (TYPE_2__**,TYPE_2__**,int) ;

__attribute__((used)) static inline void dashenc_delete_media_segments(AVFormatContext *s, OutputStream *os, int remove_count)
{
    for (int i = 0; i < remove_count; ++i) {
        dashenc_delete_segment_file(s, os->segments[i]->file);


        av_free(os->segments[i]);
    }

    os->nb_segments -= remove_count;
    memmove(os->segments, os->segments + remove_count, os->nb_segments * sizeof(*os->segments));
}

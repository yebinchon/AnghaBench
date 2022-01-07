
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int base_url; int avio_opts; } ;
typedef TYPE_1__ DASHContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_dict_free (int *) ;
 int av_freep (int *) ;
 int free_audio_list (TYPE_1__*) ;
 int free_video_list (TYPE_1__*) ;

__attribute__((used)) static int dash_close(AVFormatContext *s)
{
    DASHContext *c = s->priv_data;
    free_audio_list(c);
    free_video_list(c);
    av_dict_free(&c->avio_opts);
    av_freep(&c->base_url);
    return 0;
}

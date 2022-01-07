
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* entries; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {TYPE_4__* tracks; TYPE_4__* attachments; TYPE_4__* cues; TYPE_4__* seekhead; int tags_bc; int tracks_bc; int info_bc; int cluster_bc; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (TYPE_4__**) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void mkv_deinit(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;

    ffio_free_dyn_buf(&mkv->cluster_bc);
    ffio_free_dyn_buf(&mkv->info_bc);
    ffio_free_dyn_buf(&mkv->tracks_bc);
    ffio_free_dyn_buf(&mkv->tags_bc);

    if (mkv->seekhead) {
        av_freep(&mkv->seekhead->entries);
        av_freep(&mkv->seekhead);
    }
    if (mkv->cues) {
        av_freep(&mkv->cues->entries);
        av_freep(&mkv->cues);
    }
    if (mkv->attachments) {
        av_freep(&mkv->attachments->entries);
        av_freep(&mkv->attachments);
    }
    av_freep(&mkv->tracks);
}

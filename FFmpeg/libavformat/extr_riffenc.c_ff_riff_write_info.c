
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int value; int key; } ;
struct TYPE_6__ {int * pb; int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_MATCH_CASE ;
 TYPE_2__* av_dict_get (int ,scalar_t__*,int *,int ) ;
 int ff_end_tag (int *,int ) ;
 int ff_metadata_conv (int *,int ,int *) ;
 int ff_riff_info_conv ;
 int ff_riff_write_info_tag (int *,int ,int ) ;
 int ff_start_tag (int *,char*) ;
 int ffio_wfourcc (int *,char*) ;
 int riff_has_valid_tags (TYPE_1__*) ;
 scalar_t__** riff_tags ;

void ff_riff_write_info(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    int i;
    int64_t list_pos;
    AVDictionaryEntry *t = ((void*)0);

    ff_metadata_conv(&s->metadata, ff_riff_info_conv, ((void*)0));


    if (!riff_has_valid_tags(s))
        return;

    list_pos = ff_start_tag(pb, "LIST");
    ffio_wfourcc(pb, "INFO");
    for (i = 0; *riff_tags[i]; i++)
        if ((t = av_dict_get(s->metadata, riff_tags[i],
                             ((void*)0), AV_DICT_MATCH_CASE)))
            ff_riff_write_info_tag(s->pb, t->key, t->value);
    ff_end_tag(pb, list_pos);
}

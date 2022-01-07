
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {size_t stream_index; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_8__ thumbnail; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_13__ {char* key; int value; } ;
struct TYPE_12__ {TYPE_2__** streams; int metadata; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int metadata; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ attachment_value_size (TYPE_8__*,TYPE_4__*) ;
 TYPE_4__* av_dict_get (int ,char*,TYPE_4__*,int ) ;
 int avio_wl64 (int *,int ) ;
 scalar_t__ metadata_header_size (char*) ;
 int strlen (int ) ;

__attribute__((used)) static void write_table_redirector_legacy_attrib(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;
    AVDictionaryEntry *tag = 0;
    int64_t pos = 0;


    while ((tag = av_dict_get(s->metadata, "", tag, AV_DICT_IGNORE_SUFFIX))) {
        avio_wl64(pb, pos);
        pos += metadata_header_size(tag->key) + strlen(tag->value)*2 + 2;
    }

    if (wctx->thumbnail.size) {
        AVStream *st = s->streams[wctx->thumbnail.stream_index];
        avio_wl64(pb, pos);
        pos += metadata_header_size("WM/Picture") + attachment_value_size(&wctx->thumbnail, av_dict_get(st->metadata, "title", ((void*)0), 0));

        avio_wl64(pb, pos);
        pos += metadata_header_size("WM/MediaThumbType") + 4;
    }
}

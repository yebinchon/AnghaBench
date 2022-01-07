
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {size_t stream_index; scalar_t__ size; int data; } ;
struct TYPE_11__ {TYPE_9__ thumbnail; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_14__ {char* value; int key; } ;
struct TYPE_13__ {TYPE_2__** streams; int metadata; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int metadata; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 int attachment_value_size (TYPE_9__*,TYPE_4__*) ;
 TYPE_4__* av_dict_get (int ,char*,TYPE_4__*,int ) ;
 int avio_put_str16le (int *,char*) ;
 int avio_w8 (int *,int) ;
 int avio_wl32 (int *,scalar_t__) ;
 int avio_write (int *,int ,scalar_t__) ;
 int ff_asf_metadata_conv ;
 int ff_metadata_conv (int *,int ,int *) ;
 int ff_standardize_creation_time (TYPE_3__*) ;
 int write_metadata_header (int *,int,char*,int ) ;
 int write_tag (int *,int ,char*) ;
 int write_tag_int32 (int *,char*,int) ;

__attribute__((used)) static void write_table_entries_attrib(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;
    AVDictionaryEntry *tag = 0;

    ff_standardize_creation_time(s);

    ff_metadata_conv(&s->metadata, ff_asf_metadata_conv, ((void*)0));
    while ((tag = av_dict_get(s->metadata, "", tag, AV_DICT_IGNORE_SUFFIX)))
        write_tag(pb, tag->key, tag->value);

    if (wctx->thumbnail.size) {
        AVStream *st = s->streams[wctx->thumbnail.stream_index];
        tag = av_dict_get(st->metadata, "title", ((void*)0), 0);
        write_metadata_header(pb, 2, "WM/Picture", attachment_value_size(&wctx->thumbnail, tag));

        avio_put_str16le(pb, "image/jpeg");
        avio_w8(pb, 0x10);
        avio_put_str16le(pb, tag ? tag->value : "");

        avio_wl32(pb, wctx->thumbnail.size);
        avio_write(pb, wctx->thumbnail.data, wctx->thumbnail.size);

        write_tag_int32(pb, "WM/MediaThumbType", 2);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int flags; int stream_index; scalar_t__ size; int data; TYPE_2__* buf; } ;
struct TYPE_13__ {TYPE_8__ attached_pic; int index; int metadata; TYPE_1__* codecpar; int disposition; } ;
struct TYPE_12__ {TYPE_3__* data; int tag; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_2__* buf; scalar_t__* type; scalar_t__* description; int id; } ;
struct TYPE_10__ {scalar_t__ size; int data; } ;
struct TYPE_9__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ ID3v2ExtraMetaAPIC ;
typedef TYPE_4__ ID3v2ExtraMeta ;
typedef TYPE_5__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_PNG ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_PKT_FLAG_KEY ;
 scalar_t__ AV_RB64 (int ) ;
 int ENOMEM ;
 scalar_t__ PNGSIG ;
 int av_dict_set (int *,char*,scalar_t__*,int ) ;
 int av_init_packet (TYPE_8__*) ;
 TYPE_5__* avformat_new_stream (int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;

int ff_id3v2_parse_apic(AVFormatContext *s, ID3v2ExtraMeta **extra_meta)
{
    ID3v2ExtraMeta *cur;

    for (cur = *extra_meta; cur; cur = cur->next) {
        ID3v2ExtraMetaAPIC *apic;
        AVStream *st;

        if (strcmp(cur->tag, "APIC"))
            continue;
        apic = cur->data;

        if (!(st = avformat_new_stream(s, ((void*)0))))
            return AVERROR(ENOMEM);

        st->disposition |= AV_DISPOSITION_ATTACHED_PIC;
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id = apic->id;

        if (AV_RB64(apic->buf->data) == PNGSIG)
            st->codecpar->codec_id = AV_CODEC_ID_PNG;

        if (apic->description[0])
            av_dict_set(&st->metadata, "title", apic->description, 0);

        av_dict_set(&st->metadata, "comment", apic->type, 0);

        av_init_packet(&st->attached_pic);
        st->attached_pic.buf = apic->buf;
        st->attached_pic.data = apic->buf->data;
        st->attached_pic.size = apic->buf->size - AV_INPUT_BUFFER_PADDING_SIZE;
        st->attached_pic.stream_index = st->index;
        st->attached_pic.flags |= AV_PKT_FLAG_KEY;

        apic->buf = ((void*)0);
    }

    return 0;
}

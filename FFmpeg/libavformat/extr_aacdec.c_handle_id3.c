
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int event_flags; int metadata; int pb; } ;
struct TYPE_7__ {scalar_t__ size; int data; } ;
typedef int ID3v2ExtraMeta ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;


 int AVFMT_EVENT_FLAG_METADATA_UPDATED ;
 int ID3v2_DEFAULT_MAGIC ;
 int av_append_packet (int ,TYPE_1__*,scalar_t__) ;
 int av_dict_copy (int *,int *,int ) ;
 int av_dict_free (int **) ;
 int av_packet_unref (TYPE_1__*) ;
 int ff_id3v2_free_extra_meta (int **) ;
 int ff_id3v2_parse_priv_dict (int **,int **) ;
 int ff_id3v2_read_dict (int *,int **,int ,int **) ;
 scalar_t__ ff_id3v2_tag_len (int ) ;
 int ffio_init_context (int *,int ,scalar_t__,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int handle_id3(AVFormatContext *s, AVPacket *pkt)
{
    AVDictionary *metadata = ((void*)0);
    AVIOContext ioctx;
    ID3v2ExtraMeta *id3v2_extra_meta = ((void*)0);
    int ret;

    ret = av_append_packet(s->pb, pkt, ff_id3v2_tag_len(pkt->data) - pkt->size);
    if (ret < 0) {
        av_packet_unref(pkt);
        return ret;
    }

    ffio_init_context(&ioctx, pkt->data, pkt->size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ff_id3v2_read_dict(&ioctx, &metadata, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta);
    if ((ret = ff_id3v2_parse_priv_dict(&metadata, &id3v2_extra_meta)) < 0)
        goto error;

    if (metadata) {
        if ((ret = av_dict_copy(&s->metadata, metadata, 0)) < 0)
            goto error;
        s->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    }

error:
    av_packet_unref(pkt);
    ff_id3v2_free_extra_meta(&id3v2_extra_meta);
    av_dict_free(&metadata);

    return ret;
}

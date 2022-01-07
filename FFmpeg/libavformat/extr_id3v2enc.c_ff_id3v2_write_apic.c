
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {char* value; } ;
struct TYPE_19__ {int * pb; TYPE_4__** streams; } ;
struct TYPE_18__ {size_t stream_index; int size; int * data; } ;
struct TYPE_17__ {int metadata; int index; TYPE_1__* codecpar; } ;
struct TYPE_16__ {scalar_t__ id; char* str; } ;
struct TYPE_15__ {int version; int len; } ;
struct TYPE_14__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ ID3v2EncContext ;
typedef TYPE_3__ CodecMime ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (int *) ;
 int ID3v2_ENCODING_ISO8859 ;
 int ID3v2_ENCODING_UTF16BOM ;
 int ID3v2_ENCODING_UTF8 ;
 scalar_t__ ID3v2_HEADER_SIZE ;
 int MKBETAG (char,char,char,char) ;
 TYPE_7__* av_dict_get (int ,char*,int *,int ) ;
 int av_freep (int **) ;
 int av_log (TYPE_6__*,int ,char*,int ) ;
 int av_strcasecmp (char*,int ) ;
 int avio_close_dyn_buf (int *,int **) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_put_str (int *,char const*) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 TYPE_3__* ff_id3v2_mime_tags ;
 int * ff_id3v2_picture_types ;
 int id3v2_encode_string (int *,char const*,int) ;
 int id3v2_put_size (int *,int) ;
 scalar_t__ string_is_ascii (char const*) ;

int ff_id3v2_write_apic(AVFormatContext *s, ID3v2EncContext *id3, AVPacket *pkt)
{
    AVStream *st = s->streams[pkt->stream_index];
    AVDictionaryEntry *e;

    AVIOContext *dyn_buf;
    uint8_t *buf;
    const CodecMime *mime = ff_id3v2_mime_tags;
    const char *mimetype = ((void*)0), *desc = "";
    int enc = id3->version == 3 ? ID3v2_ENCODING_UTF16BOM :
                                  ID3v2_ENCODING_UTF8;
    int i, len, type = 0;


    while (mime->id != AV_CODEC_ID_NONE) {
        if (mime->id == st->codecpar->codec_id) {
            mimetype = mime->str;
            break;
        }
        mime++;
    }
    if (!mimetype) {
        av_log(s, AV_LOG_ERROR, "No mimetype is known for stream %d, cannot "
               "write an attached picture.\n", st->index);
        return AVERROR(EINVAL);
    }


    e = av_dict_get(st->metadata, "comment", ((void*)0), 0);
    for (i = 0; e && i < FF_ARRAY_ELEMS(ff_id3v2_picture_types); i++) {
        if (!av_strcasecmp(e->value, ff_id3v2_picture_types[i])) {
            type = i;
            break;
        }
    }


    if ((e = av_dict_get(st->metadata, "title", ((void*)0), 0)))
        desc = e->value;


    if (enc == ID3v2_ENCODING_UTF16BOM && string_is_ascii(desc))
        enc = ID3v2_ENCODING_ISO8859;


    if (avio_open_dyn_buf(&dyn_buf) < 0)
        return AVERROR(ENOMEM);

    avio_w8(dyn_buf, enc);
    avio_put_str(dyn_buf, mimetype);
    avio_w8(dyn_buf, type);
    id3v2_encode_string(dyn_buf, desc, enc);
    avio_write(dyn_buf, pkt->data, pkt->size);
    len = avio_close_dyn_buf(dyn_buf, &buf);

    avio_wb32(s->pb, MKBETAG('A', 'P', 'I', 'C'));
    if (id3->version == 3)
        avio_wb32(s->pb, len);
    else
        id3v2_put_size(s->pb, len);
    avio_wb16(s->pb, 0);
    avio_write(s->pb, buf, len);
    av_freep(&buf);

    id3->len += len + ID3v2_HEADER_SIZE;

    return 0;
}

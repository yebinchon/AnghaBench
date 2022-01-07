
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {char* data; int size; int pos; } ;
struct TYPE_11__ {int searchstr_len; int * searchstr; int * boundary; scalar_t__ strict_mime_boundary; } ;
typedef TYPE_1__ MPJPEGDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int SEEK_CUR ;
 int av_append_packet (int ,TYPE_2__*,int const) ;
 void* av_asprintf (char*,int *) ;
 int av_freep (int **) ;
 int av_get_packet (int ,TYPE_2__*,int) ;
 int av_init_packet (TYPE_2__*) ;
 int av_packet_unref (TYPE_2__*) ;
 void* av_strdup (char*) ;
 int avio_seek (int ,int,int ) ;
 int avio_tell (int ) ;
 int ffio_ensure_seekback (int ,int const) ;
 int memcmp (char*,int *,int) ;
 int * mpjpeg_get_boundary (int ) ;
 int parse_multipart_header (int ,int*,int *,TYPE_3__*) ;
 int strlen (int *) ;

__attribute__((used)) static int mpjpeg_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int size;
    int ret;

    MPJPEGDemuxContext *mpjpeg = s->priv_data;
    if (mpjpeg->boundary == ((void*)0)) {
        uint8_t* boundary = ((void*)0);
        if (mpjpeg->strict_mime_boundary) {
            boundary = mpjpeg_get_boundary(s->pb);
        }
        if (boundary != ((void*)0)) {
            mpjpeg->boundary = av_asprintf("--%s", boundary);
            mpjpeg->searchstr = av_asprintf("\r\n--%s\r\n", boundary);
            av_freep(&boundary);
        } else {
            mpjpeg->boundary = av_strdup("--");
            mpjpeg->searchstr = av_strdup("\r\n--");
        }
        if (!mpjpeg->boundary || !mpjpeg->searchstr) {
            av_freep(&mpjpeg->boundary);
            av_freep(&mpjpeg->searchstr);
            return AVERROR(ENOMEM);
        }
        mpjpeg->searchstr_len = strlen(mpjpeg->searchstr);
    }

    ret = parse_multipart_header(s->pb, &size, mpjpeg->boundary, s);


    if (ret < 0)
        return ret;

    if (size > 0) {

        ret = av_get_packet(s->pb, pkt, size);
    } else {

        int remaining = 0, len;

        const int read_chunk = 2048;
        av_init_packet(pkt);
        pkt->data = ((void*)0);
        pkt->size = 0;
        pkt->pos = avio_tell(s->pb);

        while ((ret = ffio_ensure_seekback(s->pb, read_chunk - remaining)) >= 0 &&
               (ret = av_append_packet(s->pb, pkt, read_chunk - remaining)) >= 0) {

            char *start;

            len = ret + remaining;
            start = pkt->data + pkt->size - len;
            do {
                if (!memcmp(start, mpjpeg->searchstr, mpjpeg->searchstr_len)) {

                    avio_seek(s->pb, -len, SEEK_CUR);
                    pkt->size -= len;
                    return pkt->size;
                }
                len--;
                start++;
            } while (len >= mpjpeg->searchstr_len);
            remaining = len;
        }


        if (ret == AVERROR_EOF) {
            ret = pkt->size > 0 ? pkt->size : AVERROR_EOF;
        } else {
            av_packet_unref(pkt);
        }
    }

    return ret;
}

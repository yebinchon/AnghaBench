
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_10__ {int (* io_open ) (TYPE_2__*,int **,int ,int ,int *) ;int * pb; int url; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int flags; scalar_t__ reserved_header_pos; } ;
typedef TYPE_1__ MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FF_MOV_FLAG_FRAGMENT ;
 int READ_BLOCK ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int * av_malloc (int) ;
 int avio_flush (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_write (int *,int *,int) ;
 int compute_moov_size (TYPE_2__*) ;
 int compute_sidx_size (TYPE_2__*) ;
 int ff_format_io_close (TYPE_2__*,int **) ;
 int stub1 (TYPE_2__*,int **,int ,int ,int *) ;

__attribute__((used)) static int shift_data(AVFormatContext *s)
{
    int ret = 0, moov_size;
    MOVMuxContext *mov = s->priv_data;
    int64_t pos, pos_end = avio_tell(s->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    if (mov->flags & FF_MOV_FLAG_FRAGMENT)
        moov_size = compute_sidx_size(s);
    else
        moov_size = compute_moov_size(s);
    if (moov_size < 0)
        return moov_size;

    buf = av_malloc(moov_size * 2);
    if (!buf)
        return AVERROR(ENOMEM);
    read_buf[0] = buf;
    read_buf[1] = buf + moov_size;




    avio_flush(s->pb);
    ret = s->io_open(s, &read_pb, s->url, AVIO_FLAG_READ, ((void*)0));
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to re-open %s output file for "
               "the second pass (faststart)\n", s->url);
        goto end;
    }



    pos_end = avio_tell(s->pb);
    avio_seek(s->pb, mov->reserved_header_pos + moov_size, SEEK_SET);


    avio_seek(read_pb, mov->reserved_header_pos, SEEK_SET);
    pos = avio_tell(read_pb);







    do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], moov_size); read_buf_id ^= 1; } while (0);
    do {
        int n;
        do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], moov_size); read_buf_id ^= 1; } while (0);
        n = read_size[read_buf_id];
        if (n <= 0)
            break;
        avio_write(s->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos < pos_end);
    ff_format_io_close(s, &read_pb);

end:
    av_free(buf);
    return ret;
}

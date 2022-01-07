
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_6__ {int (* io_open ) (TYPE_1__*,int **,int ,int ,int *) ;int * pb; int url; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int READ_BLOCK ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int * av_malloc (int) ;
 int avio_flush (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_write (int *,int *,int) ;
 int ff_format_io_close (TYPE_1__*,int **) ;
 int stub1 (TYPE_1__*,int **,int ,int ,int *) ;

__attribute__((used)) static int shift_data(AVFormatContext *format_context, int64_t shift_size)
{
    int ret = 0;
    int64_t pos, pos_end = avio_tell(format_context->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    buf = av_malloc(shift_size * 2);
    if (!buf)
        return AVERROR(ENOMEM);
    read_buf[0] = buf;
    read_buf[1] = buf + shift_size;



    avio_flush(format_context->pb);
    ret = format_context->io_open(format_context, &read_pb, format_context->url, AVIO_FLAG_READ, ((void*)0));
    if (ret < 0) {
        av_log(format_context, AV_LOG_ERROR, "Unable to re-open %s output file to "
               "write the header\n", format_context->url);
        av_free(buf);
        return ret;
    }



    pos_end = avio_tell(format_context->pb);
    avio_seek(format_context->pb, shift_size, SEEK_SET);


    avio_seek(read_pb, 0, SEEK_SET);
    pos = avio_tell(read_pb);







    do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], shift_size); read_buf_id ^= 1; } while (0);
    do {
        int n;
        do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], shift_size); read_buf_id ^= 1; } while (0);
        n = read_size[read_buf_id];
        if (n <= 0)
            break;
        avio_write(format_context->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos < pos_end);
    ff_format_io_close(format_context, &read_pb);

    av_free(buf);
    return 0;
}

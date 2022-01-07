
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_8__ {int (* io_open ) (TYPE_2__*,int **,int ,int ,int *) ;int * pb; int url; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int filepositions_count; int keyframe_index_size; int metadata_size_pos; int metadata_totalsize_pos; int keyframes_info_offset; scalar_t__ metadata_totalsize; } ;
typedef TYPE_1__ FLVContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int READ_BLOCK ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int * av_malloc_array (int,int) ;
 int avio_flush (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_wb24 (int *,scalar_t__) ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_write (int *,int *,int) ;
 int ff_format_io_close (TYPE_2__*,int **) ;
 int stub1 (TYPE_2__*,int **,int ,int ,int *) ;

__attribute__((used)) static int shift_data(AVFormatContext *s)
{
    int ret = 0;
    int n = 0;
    int64_t metadata_size = 0;
    FLVContext *flv = s->priv_data;
    int64_t pos, pos_end = avio_tell(s->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    metadata_size = flv->filepositions_count * 9 * 2 + 10;
    metadata_size += 2 + 13;
    metadata_size += 2 + 5;
    metadata_size += 3;

    flv->keyframe_index_size = metadata_size;

    if (metadata_size < 0)
        return metadata_size;

    buf = av_malloc_array(metadata_size, 2);
    if (!buf) {
        return AVERROR(ENOMEM);
    }
    read_buf[0] = buf;
    read_buf[1] = buf + metadata_size;

    avio_seek(s->pb, flv->metadata_size_pos, SEEK_SET);
    avio_wb24(s->pb, flv->metadata_totalsize + metadata_size);

    avio_seek(s->pb, flv->metadata_totalsize_pos, SEEK_SET);
    avio_wb32(s->pb, flv->metadata_totalsize + 11 + metadata_size);
    avio_seek(s->pb, pos_end, SEEK_SET);




    avio_flush(s->pb);
    ret = s->io_open(s, &read_pb, s->url, AVIO_FLAG_READ, ((void*)0));
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to re-open %s output file for "
               "the second pass (add_keyframe_index)\n", s->url);
        goto end;
    }



    pos_end = avio_tell(s->pb);
    avio_seek(s->pb, flv->keyframes_info_offset + metadata_size, SEEK_SET);


    avio_seek(read_pb, flv->keyframes_info_offset, SEEK_SET);
    pos = avio_tell(read_pb);







    do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], metadata_size); read_buf_id ^= 1; } while (0);
    do {
        do { read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], metadata_size); read_buf_id ^= 1; } while (0);
        n = read_size[read_buf_id];
        if (n < 0)
            break;
        avio_write(s->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos <= pos_end);

    ff_format_io_close(s, &read_pb);

end:
    av_free(buf);
    return ret;
}

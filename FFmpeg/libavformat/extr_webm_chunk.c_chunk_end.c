
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ http_method; TYPE_3__* avf; } ;
typedef TYPE_2__ WebMChunkContext ;
struct TYPE_11__ {int (* io_open ) (TYPE_3__*,int **,char*,int ,int **) ;int * pb; TYPE_1__* oformat; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int (* write_packet ) (TYPE_3__*,int *) ;} ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;


 int AVIO_FLAG_WRITE ;
 int MAX_FILENAME_SIZE ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,scalar_t__,int ) ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_write (int *,int *,int) ;
 int ff_format_io_close (TYPE_3__*,int **) ;
 int get_chunk_filename (TYPE_3__*,int ,char*) ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int **,char*,int ,int **) ;

__attribute__((used)) static int chunk_end(AVFormatContext *s, int flush)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = wc->avf;
    int ret;
    int buffer_size;
    uint8_t *buffer;
    AVIOContext *pb;
    char filename[MAX_FILENAME_SIZE];
    AVDictionary *options = ((void*)0);

    if (!oc->pb)
        return 0;

    if (flush)

        oc->oformat->write_packet(oc, ((void*)0));
    buffer_size = avio_close_dyn_buf(oc->pb, &buffer);
    oc->pb = ((void*)0);
    ret = get_chunk_filename(s, 0, filename);
    if (ret < 0)
        goto fail;
    if (wc->http_method)
        av_dict_set(&options, "method", wc->http_method, 0);
    ret = s->io_open(s, &pb, filename, AVIO_FLAG_WRITE, &options);
    if (ret < 0)
        goto fail;
    avio_write(pb, buffer, buffer_size);
    ff_format_io_close(s, &pb);
fail:
    av_dict_free(&options);
    av_free(buffer);
    return (ret < 0) ? ret : 0;
}

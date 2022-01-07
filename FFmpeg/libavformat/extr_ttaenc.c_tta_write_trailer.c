
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {unsigned int nb_samples; int * seek_table; } ;
typedef TYPE_1__ TTAMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 unsigned int UINT32_MAX ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_flush (int *) ;
 int avio_wl32 (int *,unsigned int) ;
 int avio_write (int *,int *,int) ;
 int ff_ape_write_tag (TYPE_2__*) ;
 unsigned int ffio_get_checksum (int *) ;
 int tta_queue_flush (TYPE_2__*) ;

__attribute__((used)) static int tta_write_trailer(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    uint8_t *ptr;
    unsigned int crc;
    int size;

    avio_wl32(s->pb, tta->nb_samples);
    crc = ffio_get_checksum(s->pb) ^ UINT32_MAX;
    avio_wl32(s->pb, crc);


    crc = ffio_get_checksum(tta->seek_table) ^ UINT32_MAX;
    avio_wl32(tta->seek_table, crc);
    size = avio_close_dyn_buf(tta->seek_table, &ptr);
    avio_write(s->pb, ptr, size);
    tta->seek_table = ((void*)0);
    av_free(ptr);


    tta_queue_flush(s);

    ff_ape_write_tag(s);
    avio_flush(s->pb);

    return 0;
}

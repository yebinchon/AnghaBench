
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * priv_data; } ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int ffio_close_null_buf (int *) ;
 int ffio_open_null_buf (int **) ;
 int mov_write_moov_tag (int *,int *,TYPE_1__*) ;

__attribute__((used)) static int get_moov_size(AVFormatContext *s)
{
    int ret;
    AVIOContext *moov_buf;
    MOVMuxContext *mov = s->priv_data;

    if ((ret = ffio_open_null_buf(&moov_buf)) < 0)
        return ret;
    if ((ret = mov_write_moov_tag(moov_buf, mov, s)) < 0)
        return ret;
    return ffio_close_null_buf(moov_buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int av_freep (int **) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int ff_av1_filter_obus (int *,int const*,int) ;

int ff_av1_filter_obus_buf(const uint8_t *buf, uint8_t **out, int *size)
{
    AVIOContext *pb;
    int ret;

    ret = avio_open_dyn_buf(&pb);
    if (ret < 0)
        return ret;

    ret = ff_av1_filter_obus(pb, buf, *size);
    if (ret < 0)
        return ret;

    av_freep(out);
    *size = avio_close_dyn_buf(pb, out);

    return ret;
}

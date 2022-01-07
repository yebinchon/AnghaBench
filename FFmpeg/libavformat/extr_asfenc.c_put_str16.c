
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int av_freep (int **) ;
 int avio_close_dyn_buf (int *,int **) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_put_str16le (int *,char const*) ;
 int avio_wl16 (int *,int) ;
 int avio_write (int *,int *,int) ;

__attribute__((used)) static void put_str16(AVIOContext *s, const char *tag)
{
    int len;
    uint8_t *pb;
    AVIOContext *dyn_buf;
    if (avio_open_dyn_buf(&dyn_buf) < 0)
        return;

    avio_put_str16le(dyn_buf, tag);
    len = avio_close_dyn_buf(dyn_buf, &pb);
    avio_wl16(s, len);
    avio_write(s, pb, len);
    av_freep(&pb);
}

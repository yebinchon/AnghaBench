
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int URLContext ;
typedef int AVIOContext ;


 int RTCP_RR ;
 int RTP_VERSION ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_flush (int *) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int ffurl_write (int *,int *,int) ;

void ff_rtp_send_punch_packets(URLContext *rtp_handle)
{
    AVIOContext *pb;
    uint8_t *buf;
    int len;


    if (avio_open_dyn_buf(&pb) < 0)
        return;

    avio_w8(pb, (RTP_VERSION << 6));
    avio_w8(pb, 0);
    avio_wb16(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);

    avio_flush(pb);
    len = avio_close_dyn_buf(pb, &buf);
    if ((len > 0) && buf)
        ffurl_write(rtp_handle, buf, len);
    av_free(buf);


    if (avio_open_dyn_buf(&pb) < 0)
        return;

    avio_w8(pb, (RTP_VERSION << 6));
    avio_w8(pb, RTCP_RR);
    avio_wb16(pb, 1);
    avio_wb32(pb, 0);

    avio_flush(pb);
    len = avio_close_dyn_buf(pb, &buf);
    if ((len > 0) && buf)
        ffurl_write(rtp_handle, buf, len);
    av_free(buf);
}

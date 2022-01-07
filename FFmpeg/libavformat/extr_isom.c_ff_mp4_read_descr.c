
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_TRACE ;
 int av_log (int *,int ,char*,int,int) ;
 int avio_r8 (int *) ;
 int ff_mp4_read_descr_len (int *) ;

int ff_mp4_read_descr(AVFormatContext *fc, AVIOContext *pb, int *tag)
{
    int len;
    *tag = avio_r8(pb);
    len = ff_mp4_read_descr_len(pb);
    av_log(fc, AV_LOG_TRACE, "MPEG-4 description: tag=0x%02x len=%d\n", *tag, len);
    return len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int ff_rtsp_close_connections (int *) ;
 int ff_rtsp_close_streams (int *) ;
 int ff_rtsp_connect (int *) ;
 scalar_t__ rtsp_write_record (int *) ;

__attribute__((used)) static int rtsp_write_header(AVFormatContext *s)
{
    int ret;

    ret = ff_rtsp_connect(s);
    if (ret)
        return ret;

    if (rtsp_write_record(s) < 0) {
        ff_rtsp_close_streams(s);
        ff_rtsp_close_connections(s);
        return AVERROR_INVALIDDATA;
    }
    return 0;
}

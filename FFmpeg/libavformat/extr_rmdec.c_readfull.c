
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 int avio_read (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int readfull(AVFormatContext *s, AVIOContext *pb, uint8_t *dst, int n) {
    int ret = avio_read(pb, dst, n);
    if (ret != n) {
        if (ret >= 0) memset(dst + ret, 0, n - ret);
        else memset(dst , 0, n);
        av_log(s, AV_LOG_ERROR, "Failed to fully read block\n");
    }
    return ret;
}

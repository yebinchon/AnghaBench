
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;
typedef int SRT_SOCKOPT ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int srt_getlasterror_str () ;
 scalar_t__ srt_getsockopt (int,int ,int ,void*,int*) ;

__attribute__((used)) static int libsrt_getsockopt(URLContext *h, int fd, SRT_SOCKOPT optname, const char * optnamestr, void * optval, int * optlen)
{
    if (srt_getsockopt(fd, 0, optname, optval, optlen) < 0) {
        av_log(h, AV_LOG_ERROR, "failed to get option %s on socket: %s\n", optnamestr, srt_getlasterror_str());
        return AVERROR(EIO);
    }
    return 0;
}

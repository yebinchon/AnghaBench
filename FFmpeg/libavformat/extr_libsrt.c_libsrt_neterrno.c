
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int SRT_EASYNCRCV ;
 int av_log (int *,int ,char*,int ) ;
 int srt_getlasterror (int *) ;
 int srt_getlasterror_str () ;

__attribute__((used)) static int libsrt_neterrno(URLContext *h)
{
    int err = srt_getlasterror(((void*)0));
    av_log(h, AV_LOG_ERROR, "%s\n", srt_getlasterror_str());
    if (err == SRT_EASYNCRCV)
        return AVERROR(EAGAIN);
    return AVERROR_UNKNOWN;
}

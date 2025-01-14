
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVMEDIA_TYPE_ATTACHMENT ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_PICTURE_TYPE_BI ;
 int AV_SAMPLE_FMT_DBLP ;
 scalar_t__ HAVE_MMX2 ;
 scalar_t__ HAVE_MMXEXT ;
 int LIBAVUTIL_VERSION_INT ;
 int LIBAVUTIL_VERSION_MICRO ;
 int abort () ;
 int av_assert0 (int) ;
 int av_log (int *,int ,char*) ;
 int av_sat_dadd32 (int,int) ;
 long long llrint (long long) ;

unsigned avutil_version(void)
{
    static int checks_done;
    if (checks_done)
        return LIBAVUTIL_VERSION_INT;

    av_assert0(AV_SAMPLE_FMT_DBLP == 9);
    av_assert0(AVMEDIA_TYPE_ATTACHMENT == 4);
    av_assert0(AV_PICTURE_TYPE_BI == 7);
    av_assert0(LIBAVUTIL_VERSION_MICRO >= 100);
    av_assert0(HAVE_MMX2 == HAVE_MMXEXT);

    av_assert0(((size_t)-1) > 0);

    if (av_sat_dadd32(1, 2) != 5) {
        av_log(((void*)0), AV_LOG_FATAL, "Libavutil has been built with a broken binutils, please upgrade binutils and rebuild\n");
        abort();
    }

    if (llrint(1LL<<60) != 1LL<<60) {
        av_log(((void*)0), AV_LOG_ERROR, "Libavutil has been linked to a broken llrint()\n");
    }

    checks_done = 1;
    return LIBAVUTIL_VERSION_INT;
}

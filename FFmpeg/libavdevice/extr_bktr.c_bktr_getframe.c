
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int AV_LOG_INFO ;
 scalar_t__ av_gettime () ;
 int av_log (int *,int ,char*,int) ;
 scalar_t__ last_frame_time ;
 scalar_t__ nsignals ;
 int usleep (scalar_t__) ;

__attribute__((used)) static void bktr_getframe(uint64_t per_frame)
{
    uint64_t curtime;

    curtime = av_gettime();
    if (!last_frame_time
        || ((last_frame_time + per_frame) > curtime)) {
        if (!usleep(last_frame_time + per_frame + per_frame / 8 - curtime)) {
            if (!nsignals)
                av_log(((void*)0), AV_LOG_INFO,
                       "SLEPT NO signals - %d microseconds late\n",
                       (int)(av_gettime() - last_frame_time - per_frame));
        }
    }
    nsignals = 0;
    last_frame_time = curtime;
}

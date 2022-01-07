
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EDOM ;
 double INT_MAX ;
 double INT_MIN ;
 double SBG_SCALE ;
 int av_log (void*,int ,char*,double) ;

__attribute__((used)) static inline int scale_double(void *log, double d, double m, int *r)
{
    m *= d * SBG_SCALE;
    if (m < INT_MIN || m >= INT_MAX) {
        if (log)
            av_log(log, AV_LOG_ERROR, "%g is too large\n", d);
        return AVERROR(EDOM);
    }
    *r = m;
    return 0;
}

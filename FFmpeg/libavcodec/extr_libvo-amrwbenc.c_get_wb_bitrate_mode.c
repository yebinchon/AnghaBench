
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log_buf ;


 int AV_LOG_WARNING ;
 int abs (int const) ;
 int av_log (void*,int ,char*,char*) ;
 int av_strlcatf (char*,int,char*,int const) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static int get_wb_bitrate_mode(int bitrate, void *log_ctx)
{

    static const int rates[] = { 6600, 8850, 12650, 14250, 15850, 18250,
                                 19850, 23050, 23850 };
    int i, best = -1, min_diff = 0;
    char log_buf[200];

    for (i = 0; i < 9; i++) {
        if (rates[i] == bitrate)
            return i;
        if (best < 0 || abs(rates[i] - bitrate) < min_diff) {
            best = i;
            min_diff = abs(rates[i] - bitrate);
        }
    }

    snprintf(log_buf, sizeof(log_buf), "bitrate not supported: use one of ");
    for (i = 0; i < 9; i++)
        av_strlcatf(log_buf, sizeof(log_buf), "%.2fk, ", rates[i] / 1000.f);
    av_strlcatf(log_buf, sizeof(log_buf), "using %.2fk", rates[best] / 1000.f);
    av_log(log_ctx, AV_LOG_WARNING, "%s\n", log_buf);

    return best;
}

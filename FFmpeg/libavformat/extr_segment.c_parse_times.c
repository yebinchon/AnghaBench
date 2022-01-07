
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FAIL (int) ;
 int av_free (char*) ;
 int av_log (void*,int ,char*,...) ;
 scalar_t__* av_malloc_array (int,int) ;
 int av_parse_time (scalar_t__*,char*,int) ;
 char* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;

__attribute__((used)) static int parse_times(void *log_ctx, int64_t **times, int *nb_times,
                       const char *times_str)
{
    char *p;
    int i, ret = 0;
    char *times_str1 = av_strdup(times_str);
    char *saveptr = ((void*)0);

    if (!times_str1)
        return AVERROR(ENOMEM);



    *nb_times = 1;
    for (p = times_str1; *p; p++)
        if (*p == ',')
            (*nb_times)++;

    *times = av_malloc_array(*nb_times, sizeof(**times));
    if (!*times) {
        av_log(log_ctx, AV_LOG_ERROR, "Could not allocate forced times array\n");
        ret = AVERROR(ENOMEM); goto end;
    }

    p = times_str1;
    for (i = 0; i < *nb_times; i++) {
        int64_t t;
        char *tstr = av_strtok(p, ",", &saveptr);
        p = ((void*)0);

        if (!tstr || !tstr[0]) {
            av_log(log_ctx, AV_LOG_ERROR, "Empty time specification in times list %s\n",
                   times_str);
            ret = AVERROR(EINVAL); goto end;
        }

        ret = av_parse_time(&t, tstr, 1);
        if (ret < 0) {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Invalid time duration specification '%s' in times list %s\n", tstr, times_str);
            ret = AVERROR(EINVAL); goto end;
        }
        (*times)[i] = t;


        if (i && (*times)[i-1] > (*times)[i]) {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Specified time %f is greater than the following time %f\n",
                   (float)((*times)[i])/1000000, (float)((*times)[i-1])/1000000);
            ret = AVERROR(EINVAL); goto end;
        }
    }

end:
    av_free(times_str1);
    return ret;
}

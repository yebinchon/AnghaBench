
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,...) ;
 TYPE_1__* av_malloc_array (int,int) ;
 char* av_strdup (char const*) ;
 int log_read_interval (TYPE_1__*,int *,int ) ;
 int parse_read_interval (char*,TYPE_1__*) ;
 TYPE_1__* read_intervals ;
 int read_intervals_nb ;
 char* strchr (char*,char) ;

__attribute__((used)) static int parse_read_intervals(const char *intervals_spec)
{
    int ret, n, i;
    char *p, *spec = av_strdup(intervals_spec);
    if (!spec)
        return AVERROR(ENOMEM);


    for (n = 0, p = spec; *p; p++)
        if (*p == ',')
            n++;
    n++;

    read_intervals = av_malloc_array(n, sizeof(*read_intervals));
    if (!read_intervals) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    read_intervals_nb = n;


    p = spec;
    for (i = 0; p; i++) {
        char *next;

        av_assert0(i < read_intervals_nb);
        next = strchr(p, ',');
        if (next)
            *next++ = 0;

        read_intervals[i].id = i;
        ret = parse_read_interval(p, &read_intervals[i]);
        if (ret < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Error parsing read interval #%d '%s'\n",
                   i, p);
            goto end;
        }
        av_log(((void*)0), AV_LOG_VERBOSE, "Parsed log interval ");
        log_read_interval(&read_intervals[i], ((void*)0), AV_LOG_VERBOSE);
        p = next;
    }
    av_assert0(i == read_intervals_nb);

end:
    av_free(spec);
    return ret;
}

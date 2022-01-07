
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int idx_str ;
struct TYPE_2__ {void** streamid_map; int nb_streamid_map; } ;
typedef TYPE_1__ OptionsContext ;


 int AV_LOG_FATAL ;
 scalar_t__ INT_MAX ;
 scalar_t__ MAX_STREAMS ;
 int OPT_INT ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 int av_strlcpy (char*,char const*,int) ;
 int exit_program (int) ;
 void** grow_array (void**,int,int *,int) ;
 void* parse_number_or_die (char const*,char*,int ,int ,scalar_t__) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int opt_streamid(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    int idx;
    char *p;
    char idx_str[16];

    av_strlcpy(idx_str, arg, sizeof(idx_str));
    p = strchr(idx_str, ':');
    if (!p) {
        av_log(((void*)0), AV_LOG_FATAL,
               "Invalid value '%s' for option '%s', required syntax is 'index:value'\n",
               arg, opt);
        exit_program(1);
    }
    *p++ = '\0';
    idx = parse_number_or_die(opt, idx_str, OPT_INT, 0, MAX_STREAMS-1);
    o->streamid_map = grow_array(o->streamid_map, sizeof(*o->streamid_map), &o->nb_streamid_map, idx+1);
    o->streamid_map[idx] = parse_number_or_die(opt, p, OPT_INT, 0, INT_MAX);
    return 0;
}

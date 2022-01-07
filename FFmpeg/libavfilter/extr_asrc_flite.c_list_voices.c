
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;


 int AV_LOG_INFO ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int av_log (void*,int ,char*,int ,char const*) ;
 TYPE_1__* voice_entries ;

__attribute__((used)) static void list_voices(void *log_ctx, const char *sep)
{
    int i, n = FF_ARRAY_ELEMS(voice_entries);
    for (i = 0; i < n; i++)
        av_log(log_ctx, AV_LOG_INFO, "%s%s",
               voice_entries[i].name, i < (n-1) ? sep : "\n");
}

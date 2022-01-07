
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {char* value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_INFO ;
 int FFMIN (int,size_t) ;
 int av_dict_count (int *) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_log (void*,int ,char*,...) ;
 int av_strlcpy (char*,char const*,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static void dump_metadata(void *ctx, AVDictionary *m, const char *indent)
{
    if (m && !(av_dict_count(m) == 1 && av_dict_get(m, "language", ((void*)0), 0))) {
        AVDictionaryEntry *tag = ((void*)0);

        av_log(ctx, AV_LOG_INFO, "%sMetadata:\n", indent);
        while ((tag = av_dict_get(m, "", tag, AV_DICT_IGNORE_SUFFIX)))
            if (strcmp("language", tag->key)) {
                const char *p = tag->value;
                av_log(ctx, AV_LOG_INFO,
                       "%s  %-16s: ", indent, tag->key);
                while (*p) {
                    char tmp[256];
                    size_t len = strcspn(p, "\x8\xa\xb\xc\xd");
                    av_strlcpy(tmp, p, FFMIN(sizeof(tmp), len+1));
                    av_log(ctx, AV_LOG_INFO, "%s", tmp);
                    p += len;
                    if (*p == 0xd) av_log(ctx, AV_LOG_INFO, " ");
                    if (*p == 0xa) av_log(ctx, AV_LOG_INFO, "\n%s  %-16s: ", indent, "");
                    if (*p) p++;
                }
                av_log(ctx, AV_LOG_INFO, "\n");
            }
    }
}

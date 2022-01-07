
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int comment_count; int * comment_refs; } ;
struct TYPE_5__ {char* name; int value; } ;
typedef TYPE_1__ MXFTaggedValue ;
typedef TYPE_2__ MXFPackage ;
typedef int MXFContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_DONT_STRDUP_KEY ;
 int ENOMEM ;
 int TaggedValue ;
 int av_dict_set (int **,char*,int ,int ) ;
 char* av_mallocz (int) ;
 TYPE_1__* mxf_resolve_strong_ref (int *,int *,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int mxf_parse_package_comments(MXFContext *mxf, AVDictionary **pm, MXFPackage *package)
{
    MXFTaggedValue *tag;
    int size, i;
    char *key = ((void*)0);

    for (i = 0; i < package->comment_count; i++) {
        tag = mxf_resolve_strong_ref(mxf, &package->comment_refs[i], TaggedValue);
        if (!tag || !tag->name || !tag->value)
            continue;

        size = strlen(tag->name) + 8 + 1;
        key = av_mallocz(size);
        if (!key)
            return AVERROR(ENOMEM);

        snprintf(key, size, "comment_%s", tag->name);
        av_dict_set(pm, key, tag->value, AV_DICT_DONT_STRDUP_KEY);
    }
    return 0;
}

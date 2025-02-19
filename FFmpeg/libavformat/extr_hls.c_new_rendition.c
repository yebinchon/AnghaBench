
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rendition_info {char* type; char* uri; char* defaultr; char* forced; char* characteristics; scalar_t__* assoc_language; int name; int language; int group_id; } ;
struct rendition {int type; char* group_id; char* language; char* name; int disposition; TYPE_3__* playlist; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_8__ {scalar_t__ strict_std_compliance; } ;
struct TYPE_7__ {int n_renditions; int renditions; } ;
struct TYPE_6__ {int n_renditions; int renditions; TYPE_5__* ctx; } ;
typedef TYPE_1__ HLSContext ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_UNKNOWN ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_DISPOSITION_DEFAULT ;
 int AV_DISPOSITION_FORCED ;
 int AV_DISPOSITION_HEARING_IMPAIRED ;
 int AV_DISPOSITION_VISUAL_IMPAIRED ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ FF_COMPLIANCE_EXPERIMENTAL ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 struct rendition* av_mallocz (int) ;
 char* av_strtok (char*,char*,char**) ;
 int dynarray_add (int *,int *,struct rendition*) ;
 TYPE_3__* new_playlist (TYPE_1__*,char*,char const*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 int strncpy (int ,scalar_t__*,int) ;

__attribute__((used)) static struct rendition *new_rendition(HLSContext *c, struct rendition_info *info,
                                      const char *url_base)
{
    struct rendition *rend;
    enum AVMediaType type = AVMEDIA_TYPE_UNKNOWN;
    char *characteristic;
    char *chr_ptr;
    char *saveptr;

    if (!strcmp(info->type, "AUDIO"))
        type = AVMEDIA_TYPE_AUDIO;
    else if (!strcmp(info->type, "VIDEO"))
        type = AVMEDIA_TYPE_VIDEO;
    else if (!strcmp(info->type, "SUBTITLES"))
        type = AVMEDIA_TYPE_SUBTITLE;
    else if (!strcmp(info->type, "CLOSED-CAPTIONS"))


        return ((void*)0);

    if (type == AVMEDIA_TYPE_UNKNOWN) {
        av_log(c->ctx, AV_LOG_WARNING, "Can't support the type: %s\n", info->type);
        return ((void*)0);
    }


    if (type == AVMEDIA_TYPE_SUBTITLE && !info->uri[0]) {
        av_log(c->ctx, AV_LOG_ERROR, "The URI tag is REQUIRED for subtitle.\n");
        return ((void*)0);
    }


    if (c->ctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)
        if (type == AVMEDIA_TYPE_SUBTITLE) {
            av_log(c->ctx, AV_LOG_WARNING, "Can't support the subtitle(uri: %s)\n", info->uri);
            return ((void*)0);
        }

    rend = av_mallocz(sizeof(struct rendition));
    if (!rend)
        return ((void*)0);

    dynarray_add(&c->renditions, &c->n_renditions, rend);

    rend->type = type;
    strcpy(rend->group_id, info->group_id);
    strcpy(rend->language, info->language);
    strcpy(rend->name, info->name);


    if (info->uri[0]) {
        rend->playlist = new_playlist(c, info->uri, url_base);
        if (rend->playlist)
            dynarray_add(&rend->playlist->renditions,
                         &rend->playlist->n_renditions, rend);
    }

    if (info->assoc_language[0]) {
        int langlen = strlen(rend->language);
        if (langlen < sizeof(rend->language) - 3) {
            rend->language[langlen] = ',';
            strncpy(rend->language + langlen + 1, info->assoc_language,
                    sizeof(rend->language) - langlen - 2);
        }
    }

    if (!strcmp(info->defaultr, "YES"))
        rend->disposition |= AV_DISPOSITION_DEFAULT;
    if (!strcmp(info->forced, "YES"))
        rend->disposition |= AV_DISPOSITION_FORCED;

    chr_ptr = info->characteristics;
    while ((characteristic = av_strtok(chr_ptr, ",", &saveptr))) {
        if (!strcmp(characteristic, "public.accessibility.describes-music-and-sound"))
            rend->disposition |= AV_DISPOSITION_HEARING_IMPAIRED;
        else if (!strcmp(characteristic, "public.accessibility.describes-video"))
            rend->disposition |= AV_DISPOSITION_VISUAL_IMPAIRED;

        chr_ptr = ((void*)0);
    }

    return rend;
}

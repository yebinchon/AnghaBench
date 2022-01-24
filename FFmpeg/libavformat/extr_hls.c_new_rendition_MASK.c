#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rendition_info {char* type; char* uri; char* defaultr; char* forced; char* characteristics; scalar_t__* assoc_language; int /*<<< orphan*/  name; int /*<<< orphan*/  language; int /*<<< orphan*/  group_id; } ;
struct rendition {int type; char* group_id; char* language; char* name; int /*<<< orphan*/  disposition; TYPE_3__* playlist; } ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_8__ {scalar_t__ strict_std_compliance; } ;
struct TYPE_7__ {int /*<<< orphan*/  n_renditions; int /*<<< orphan*/  renditions; } ;
struct TYPE_6__ {int /*<<< orphan*/  n_renditions; int /*<<< orphan*/  renditions; TYPE_5__* ctx; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 int AVMEDIA_TYPE_AUDIO ; 
 int AVMEDIA_TYPE_SUBTITLE ; 
 int AVMEDIA_TYPE_UNKNOWN ; 
 int AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_DISPOSITION_DEFAULT ; 
 int /*<<< orphan*/  AV_DISPOSITION_FORCED ; 
 int /*<<< orphan*/  AV_DISPOSITION_HEARING_IMPAIRED ; 
 int /*<<< orphan*/  AV_DISPOSITION_VISUAL_IMPAIRED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FF_COMPLIANCE_EXPERIMENTAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 struct rendition* FUNC1 (int) ; 
 char* FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rendition*) ; 
 TYPE_3__* FUNC4 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static struct rendition *FUNC9(HLSContext *c, struct rendition_info *info,
                                      const char *url_base)
{
    struct rendition *rend;
    enum AVMediaType type = AVMEDIA_TYPE_UNKNOWN;
    char *characteristic;
    char *chr_ptr;
    char *saveptr;

    if (!FUNC5(info->type, "AUDIO"))
        type = AVMEDIA_TYPE_AUDIO;
    else if (!FUNC5(info->type, "VIDEO"))
        type = AVMEDIA_TYPE_VIDEO;
    else if (!FUNC5(info->type, "SUBTITLES"))
        type = AVMEDIA_TYPE_SUBTITLE;
    else if (!FUNC5(info->type, "CLOSED-CAPTIONS"))
        /* CLOSED-CAPTIONS is ignored since we do not support CEA-608 CC in
         * AVC SEI RBSP anyway */
        return NULL;

    if (type == AVMEDIA_TYPE_UNKNOWN) {
        FUNC0(c->ctx, AV_LOG_WARNING, "Can't support the type: %s\n", info->type);
        return NULL;
    }

    /* URI is mandatory for subtitles as per spec */
    if (type == AVMEDIA_TYPE_SUBTITLE && !info->uri[0]) {
        FUNC0(c->ctx, AV_LOG_ERROR, "The URI tag is REQUIRED for subtitle.\n");
        return NULL;
    }

    /* TODO: handle subtitles (each segment has to parsed separately) */
    if (c->ctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)
        if (type == AVMEDIA_TYPE_SUBTITLE) {
            FUNC0(c->ctx, AV_LOG_WARNING, "Can't support the subtitle(uri: %s)\n", info->uri);
            return NULL;
        }

    rend = FUNC1(sizeof(struct rendition));
    if (!rend)
        return NULL;

    FUNC3(&c->renditions, &c->n_renditions, rend);

    rend->type = type;
    FUNC6(rend->group_id, info->group_id);
    FUNC6(rend->language, info->language);
    FUNC6(rend->name, info->name);

    /* add the playlist if this is an external rendition */
    if (info->uri[0]) {
        rend->playlist = FUNC4(c, info->uri, url_base);
        if (rend->playlist)
            FUNC3(&rend->playlist->renditions,
                         &rend->playlist->n_renditions, rend);
    }

    if (info->assoc_language[0]) {
        int langlen = FUNC7(rend->language);
        if (langlen < sizeof(rend->language) - 3) {
            rend->language[langlen] = ',';
            FUNC8(rend->language + langlen + 1, info->assoc_language,
                    sizeof(rend->language) - langlen - 2);
        }
    }

    if (!FUNC5(info->defaultr, "YES"))
        rend->disposition |= AV_DISPOSITION_DEFAULT;
    if (!FUNC5(info->forced, "YES"))
        rend->disposition |= AV_DISPOSITION_FORCED;

    chr_ptr = info->characteristics;
    while ((characteristic = FUNC2(chr_ptr, ",", &saveptr))) {
        if (!FUNC5(characteristic, "public.accessibility.describes-music-and-sound"))
            rend->disposition |= AV_DISPOSITION_HEARING_IMPAIRED;
        else if (!FUNC5(characteristic, "public.accessibility.describes-video"))
            rend->disposition |= AV_DISPOSITION_VISUAL_IMPAIRED;

        chr_ptr = NULL;
    }

    return rend;
}
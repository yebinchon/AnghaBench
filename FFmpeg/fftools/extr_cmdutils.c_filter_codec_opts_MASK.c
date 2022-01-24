#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_19__ {int /*<<< orphan*/  const* priv_class; } ;
struct TYPE_18__ {char* key; int /*<<< orphan*/  value; } ;
struct TYPE_17__ {scalar_t__ oformat; } ;
struct TYPE_16__ {TYPE_1__* codecpar; } ;
struct TYPE_15__ {int codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_5__ AVCodec ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 130 
#define  AVMEDIA_TYPE_SUBTITLE 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int AV_OPT_FLAG_AUDIO_PARAM ; 
 int AV_OPT_FLAG_DECODING_PARAM ; 
 int AV_OPT_FLAG_ENCODING_PARAM ; 
 int AV_OPT_FLAG_SUBTITLE_PARAM ; 
 int AV_OPT_FLAG_VIDEO_PARAM ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_FAKE_OBJ ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const**,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int) ; 
 TYPE_5__* FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (char*,char) ; 

AVDictionary *FUNC9(AVDictionary *opts, enum AVCodecID codec_id,
                                AVFormatContext *s, AVStream *st, AVCodec *codec)
{
    AVDictionary    *ret = NULL;
    AVDictionaryEntry *t = NULL;
    int            flags = s->oformat ? AV_OPT_FLAG_ENCODING_PARAM
                                      : AV_OPT_FLAG_DECODING_PARAM;
    char          prefix = 0;
    const AVClass    *cc = FUNC5();

    if (!codec)
        codec            = s->oformat ? FUNC4(codec_id)
                                      : FUNC3(codec_id);

    switch (st->codecpar->codec_type) {
    case AVMEDIA_TYPE_VIDEO:
        prefix  = 'v';
        flags  |= AV_OPT_FLAG_VIDEO_PARAM;
        break;
    case AVMEDIA_TYPE_AUDIO:
        prefix  = 'a';
        flags  |= AV_OPT_FLAG_AUDIO_PARAM;
        break;
    case AVMEDIA_TYPE_SUBTITLE:
        prefix  = 's';
        flags  |= AV_OPT_FLAG_SUBTITLE_PARAM;
        break;
    }

    while ((t = FUNC0(opts, "", t, AV_DICT_IGNORE_SUFFIX))) {
        char *p = FUNC8(t->key, ':');

        /* check stream specification in opt name */
        if (p)
            switch (FUNC6(s, st, p + 1)) {
            case  1: *p = 0; break;
            case  0:         continue;
            default:         FUNC7(1);
            }

        if (FUNC2(&cc, t->key, NULL, flags, AV_OPT_SEARCH_FAKE_OBJ) ||
            !codec ||
            (codec->priv_class &&
             FUNC2(&codec->priv_class, t->key, NULL, flags,
                         AV_OPT_SEARCH_FAKE_OBJ)))
            FUNC1(&ret, t->key, t->value, 0);
        else if (t->key[0] == prefix &&
                 FUNC2(&cc, t->key + 1, NULL, flags,
                             AV_OPT_SEARCH_FAKE_OBJ))
            FUNC1(&ret, t->key + 1, t->value, 0);

        if (p)
            *p = ':';
    }
    return ret;
}
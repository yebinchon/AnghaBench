#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int /*<<< orphan*/ * value; int /*<<< orphan*/  key; } ;
struct TYPE_12__ {int nb_streams; int flags; int /*<<< orphan*/  pb; int /*<<< orphan*/  metadata; TYPE_7__** streams; } ;
struct TYPE_11__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_BITEXACT ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AV_CODEC_ID_SUBRIP ; 
 scalar_t__ AV_CODEC_ID_TEXT ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LIBAVFORMAT_VERSION ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char*,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int,int,int) ; 
 int /*<<< orphan*/  ff_lrc_metadata_conv ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    const AVDictionaryEntry *metadata_item;

    if(s->nb_streams != 1 ||
       s->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
        FUNC4(s, AV_LOG_ERROR,
               "LRC supports only a single subtitle stream.\n");
        return FUNC0(EINVAL);
    }
    if(s->streams[0]->codecpar->codec_id != AV_CODEC_ID_SUBRIP &&
       s->streams[0]->codecpar->codec_id != AV_CODEC_ID_TEXT) {
        FUNC4(s, AV_LOG_ERROR, "Unsupported subtitle codec: %s\n",
               FUNC5(s->streams[0]->codecpar->codec_id));
        return FUNC0(EINVAL);
    }
    FUNC7(s->streams[0], 64, 1, 100);

    FUNC9(s);
    FUNC8(s, ff_lrc_metadata_conv, NULL);
    if(!(s->flags & AVFMT_FLAG_BITEXACT)) { // avoid breaking regression tests
        /* LRC provides a metadata slot for specifying encoder version
         * in addition to encoder name. We will store LIBAVFORMAT_VERSION
         * to it.
         */
        FUNC3(&s->metadata, "ve", FUNC1(LIBAVFORMAT_VERSION), 0);
    } else {
        FUNC3(&s->metadata, "ve", NULL, 0);
    }
    for(metadata_item = NULL;
       (metadata_item = FUNC2(s->metadata, "", metadata_item,
                                    AV_DICT_IGNORE_SUFFIX));) {
        char *delim;
        if(!metadata_item->value[0]) {
            continue;
        }
        while((delim = FUNC10(metadata_item->value, '\n'))) {
            *delim = ' ';
        }
        while((delim = FUNC10(metadata_item->value, '\r'))) {
            *delim = ' ';
        }
        FUNC6(s->pb, "[%s:%s]\n",
                    metadata_item->key, metadata_item->value);
    }
    FUNC6(s->pb, "\n");
    return 0;
}
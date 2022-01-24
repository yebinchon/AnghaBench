#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ codec_type; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  channels; int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_13__ {char* key; char* value; } ;
struct TYPE_12__ {int nb_streams; TYPE_1__** streams; int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_11__ {TYPE_4__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int SMJPEG_HEND ; 
 char* SMJPEG_MAGIC ; 
 int SMJPEG_SND ; 
 int SMJPEG_TXT ; 
 int SMJPEG_VID ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_codec_smjpeg_audio_tags ; 
 int /*<<< orphan*/  ff_codec_smjpeg_video_tags ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s)
{
    AVDictionaryEntry *t = NULL;
    AVIOContext *pb = s->pb;
    int n, tag;

    if (s->nb_streams > 2) {
        FUNC2(s, AV_LOG_ERROR, "more than >2 streams are not supported\n");
        return FUNC0(EINVAL);
    }
    FUNC8(pb, SMJPEG_MAGIC, 8);
    FUNC6(pb, 0);
    FUNC6(pb, 0);

    FUNC11(s);
    while ((t = FUNC1(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
        FUNC7(pb, SMJPEG_TXT);
        FUNC6(pb, FUNC12(t->key) + FUNC12(t->value) + 3);
        FUNC8(pb, t->key, FUNC12(t->key));
        FUNC8(pb, " = ", 3);
        FUNC8(pb, t->value, FUNC12(t->value));
    }

    for (n = 0; n < s->nb_streams; n++) {
        AVStream *st = s->streams[n];
        AVCodecParameters *par = st->codecpar;
        if (par->codec_type == AVMEDIA_TYPE_AUDIO) {
            tag = FUNC10(ff_codec_smjpeg_audio_tags, par->codec_id);
            if (!tag) {
                FUNC2(s, AV_LOG_ERROR, "unsupported audio codec\n");
                return FUNC0(EINVAL);
            }
            FUNC7(pb, SMJPEG_SND);
            FUNC6(pb, 8);
            FUNC5(pb, par->sample_rate);
            FUNC4(pb, par->bits_per_coded_sample);
            FUNC4(pb, par->channels);
            FUNC7(pb, tag);
            FUNC9(st, 32, 1, 1000);
        } else if (par->codec_type == AVMEDIA_TYPE_VIDEO) {
            tag = FUNC10(ff_codec_smjpeg_video_tags, par->codec_id);
            if (!tag) {
                FUNC2(s, AV_LOG_ERROR, "unsupported video codec\n");
                return FUNC0(EINVAL);
            }
            FUNC7(pb, SMJPEG_VID);
            FUNC6(pb, 12);
            FUNC6(pb, 0);
            FUNC5(pb, par->width);
            FUNC5(pb, par->height);
            FUNC7(pb, tag);
            FUNC9(st, 32, 1, 1000);
        }
    }

    FUNC7(pb, SMJPEG_HEND);
    FUNC3(pb);

    return 0;
}
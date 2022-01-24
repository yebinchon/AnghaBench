#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_12__ {int audio_stream_idx; void* ssnd; void* frames; void* form; } ;
struct TYPE_11__ {scalar_t__ codec_type; scalar_t__ codec_tag; int block_align; int channels; int bits_per_coded_sample; int extradata_size; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_id; scalar_t__ channel_layout; } ;
struct TYPE_10__ {int nb_streams; TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;
typedef  TYPE_4__ AIFFOutputContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s)
{
    AIFFOutputContext *aiff = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par;
    uint64_t sample_rate;
    int i, aifc = 0;

    aiff->audio_stream_idx = -1;
    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        if (aiff->audio_stream_idx < 0 && st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            aiff->audio_stream_idx = i;
        } else if (st->codecpar->codec_type != AVMEDIA_TYPE_VIDEO) {
            FUNC5(s, AV_LOG_ERROR, "AIFF allows only one audio stream and a picture.\n");
            return FUNC0(EINVAL);
        }
    }
    if (aiff->audio_stream_idx < 0) {
        FUNC5(s, AV_LOG_ERROR, "No audio stream present.\n");
        return FUNC0(EINVAL);
    }

    par = s->streams[aiff->audio_stream_idx]->codecpar;

    /* First verify if format is ok */
    if (!par->codec_tag)
        return FUNC0(EINVAL);
    if (par->codec_tag != FUNC1('N','O','N','E'))
        aifc = 1;

    /* FORM AIFF header */
    FUNC15(pb, "FORM");
    aiff->form = FUNC7(pb);
    FUNC9(pb, 0);                    /* file length */
    FUNC15(pb, aifc ? "AIFC" : "AIFF");

    if (aifc) { // compressed audio
        if (!par->block_align) {
            FUNC5(s, AV_LOG_ERROR, "block align not set\n");
            return FUNC0(EINVAL);
        }
        /* Version chunk */
        FUNC15(pb, "FVER");
        FUNC9(pb, 4);
        FUNC9(pb, 0xA2805140);
    }

    if (par->channels > 2 && par->channel_layout) {
        FUNC15(pb, "CHAN");
        FUNC9(pb, 12);
        FUNC14(pb, par->channel_layout);
    }

    FUNC16(s, "title",     FUNC1('N', 'A', 'M', 'E'));
    FUNC16(s, "author",    FUNC1('A', 'U', 'T', 'H'));
    FUNC16(s, "copyright", FUNC1('(', 'c', ')', ' '));
    FUNC16(s, "comment",   FUNC1('A', 'N', 'N', 'O'));

    /* Common chunk */
    FUNC15(pb, "COMM");
    FUNC9(pb, aifc ? 24 : 18); /* size */
    FUNC8(pb, par->channels);  /* Number of channels */

    aiff->frames = FUNC7(pb);
    FUNC9(pb, 0);              /* Number of frames */

    if (!par->bits_per_coded_sample)
        par->bits_per_coded_sample = FUNC4(par->codec_id);
    if (!par->bits_per_coded_sample) {
        FUNC5(s, AV_LOG_ERROR, "could not compute bits per sample\n");
        return FUNC0(EINVAL);
    }
    if (!par->block_align)
        par->block_align = (par->bits_per_coded_sample * par->channels) >> 3;

    FUNC8(pb, par->bits_per_coded_sample); /* Sample size */

    sample_rate = FUNC3(par->sample_rate);
    FUNC8(pb, (sample_rate >> 52) + (16383 - 1023));
    FUNC10(pb, FUNC2(1) << 63 | sample_rate << 11);

    if (aifc) {
        FUNC11(pb, par->codec_tag);
        FUNC8(pb, 0);
    }

    if (  (par->codec_tag == FUNC1('Q','D','M','2')
        || par->codec_tag == FUNC1('Q','c','l','p')) && par->extradata_size) {
        FUNC15(pb, "wave");
        FUNC9(pb, par->extradata_size);
        FUNC12(pb, par->extradata, par->extradata_size);
    }

    /* Sound data chunk */
    FUNC15(pb, "SSND");
    aiff->ssnd = FUNC7(pb);         /* Sound chunk size */
    FUNC9(pb, 0);                    /* Sound samples data size */
    FUNC9(pb, 0);                    /* Data offset */
    FUNC9(pb, 0);                    /* Block-size (block align) */

    FUNC13(s->streams[aiff->audio_stream_idx], 64, 1,
                        s->streams[aiff->audio_stream_idx]->codecpar->sample_rate);

    /* Data is starting here */
    FUNC6(pb);

    return 0;
}
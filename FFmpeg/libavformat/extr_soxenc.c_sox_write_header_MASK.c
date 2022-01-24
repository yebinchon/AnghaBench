#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ codec_id; size_t channels; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int /*<<< orphan*/  metadata; TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {size_t header_size; } ;
struct TYPE_9__ {TYPE_5__* codecpar; } ;
typedef  TYPE_2__ SoXContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_PCM_S32BE ; 
 scalar_t__ AV_CODEC_ID_PCM_S32LE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 size_t FUNC1 (size_t,int) ; 
 size_t SOX_FIXED_HDR ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s)
{
    SoXContext *sox = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVDictionaryEntry *comment;
    size_t comment_len = 0, comment_size;

    comment = FUNC2(s->metadata, "comment", NULL, 0);
    if (comment)
        comment_len = FUNC13(comment->value);
    comment_size = FUNC1(comment_len, 8);

    sox->header_size = SOX_FIXED_HDR + comment_size;

    if (par->codec_id == AV_CODEC_ID_PCM_S32LE) {
        FUNC12(pb, ".SoX");
        FUNC8(pb, sox->header_size);
        FUNC9(pb, 0); /* number of samples */
        FUNC9(pb, FUNC3(par->sample_rate));
        FUNC8(pb, par->channels);
        FUNC8(pb, comment_size);
    } else if (par->codec_id == AV_CODEC_ID_PCM_S32BE) {
        FUNC12(pb, "XoS.");
        FUNC6(pb, sox->header_size);
        FUNC7(pb, 0); /* number of samples */
        FUNC7(pb, FUNC3(par->sample_rate));
        FUNC6(pb, par->channels);
        FUNC6(pb, comment_size);
    } else {
        FUNC4(s, AV_LOG_ERROR, "invalid codec; use pcm_s32le or pcm_s32be\n");
        return FUNC0(EINVAL);
    }

    if (comment_len)
        FUNC10(pb, comment->value, comment_len);

    FUNC11(pb, 0, comment_size - comment_len);

    FUNC5(pb);

    return 0;
}
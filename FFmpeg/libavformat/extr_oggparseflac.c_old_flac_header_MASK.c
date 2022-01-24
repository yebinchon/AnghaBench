#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ogg_stream {int /*<<< orphan*/  psize; scalar_t__ pstart; scalar_t__ buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_19__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_18__ {scalar_t__ sample_rate; } ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_15__ {TYPE_8__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParserContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_FLAC ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  PARSER_FLAG_COMPLETE_FRAMES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ **,int*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**) ; 
 int FUNC6 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (AVFormatContext * s, int idx)
{
    struct ogg *ogg = s->priv_data;
    AVStream *st = s->streams[idx];
    struct ogg_stream *os = ogg->streams + idx;
    AVCodecParserContext *parser = FUNC2(AV_CODEC_ID_FLAC);
    AVCodecContext *avctx;
    int size, ret;
    uint8_t *data;

    if (!parser)
        return -1;

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_FLAC;

    avctx = FUNC4(NULL);
    if (!avctx) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ret = FUNC6(avctx, st->codecpar);
    if (ret < 0)
        goto fail;

    parser->flags = PARSER_FLAG_COMPLETE_FRAMES;
    FUNC3(parser, avctx,
                     &data, &size, os->buf + os->pstart, os->psize,
                     AV_NOPTS_VALUE, AV_NOPTS_VALUE, -1);

    FUNC1(parser);

    if (avctx->sample_rate) {
        FUNC7(st, 64, 1, avctx->sample_rate);
        FUNC5(&avctx);
        return 0;
    }

    FUNC5(&avctx);
    return 1;
fail:
    FUNC1(parser);
    FUNC5(&avctx);
    return ret;
}
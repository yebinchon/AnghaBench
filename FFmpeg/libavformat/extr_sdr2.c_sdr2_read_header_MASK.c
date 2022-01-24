#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_8__ {int width; int height; int channels; int sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 int /*<<< orphan*/  AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FIRST ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVStream *st, *ast;

    ast = FUNC1(s, 0);
    if (!ast)
        return FUNC0(ENOMEM);

    st = FUNC1(s, 0);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC4(s->pb, 20);
    FUNC5(st, 64, 1, FUNC2(s->pb));
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->width      = FUNC2(s->pb);
    st->codecpar->height     = FUNC2(s->pb);
    st->codecpar->codec_id   = AV_CODEC_ID_H264;
    st->need_parsing      = AVSTREAM_PARSE_FULL;

    ast->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->channels    = 1;
    ast->codecpar->sample_rate = 8000;
    ast->codecpar->codec_id    = AV_CODEC_ID_PCM_S16LE;
    FUNC5(ast, 64, 1, 8000);

    FUNC3(s->pb, FIRST, SEEK_SET);

    return 0;
}
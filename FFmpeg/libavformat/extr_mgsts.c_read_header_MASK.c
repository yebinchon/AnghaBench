#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_11__ {TYPE_1__* codecpar; void* duration; void* nb_frames; scalar_t__ start_time; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_10__ {void* codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* height; void* width; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVRational ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_2__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream    *st;
    AVRational  fps;
    uint32_t chunk_size;

    FUNC5(pb, 4);
    chunk_size = FUNC4(pb);
    if (chunk_size != 80)
        return FUNC0(EIO);
    FUNC5(pb, 20);

    st = FUNC3(s, 0);
    if (!st)
        return FUNC0(ENOMEM);

    st->need_parsing = AVSTREAM_PARSE_HEADERS;
    st->start_time = 0;
    st->nb_frames  =
    st->duration   = FUNC4(pb);
    fps = FUNC1(FUNC2(FUNC4(pb)), INT_MAX);
    st->codecpar->width  = FUNC4(pb);
    st->codecpar->height = FUNC4(pb);
    FUNC5(pb, 12);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_tag  = FUNC4(pb);
    st->codecpar->codec_id   = FUNC7(ff_codec_bmp_tags,
                                               st->codecpar->codec_tag);
    FUNC6(st, 64, fps.den, fps.num);
    FUNC5(pb, 20);

    return 0;
}
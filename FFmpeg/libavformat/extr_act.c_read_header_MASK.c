#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int sample_rate; int frame_size; int channels; int /*<<< orphan*/  codec_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  bytes_left_in_chunk; } ;
struct TYPE_12__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_11__ {TYPE_6__* codecpar; int /*<<< orphan*/  duration; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ACTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_CODEC_ID_G729 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  CHUNK_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_6__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    ACTContext* ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    int size;
    AVStream* st;

    int min,sec,msec;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC8(pb, 16);
    size=FUNC6(pb);
    FUNC10(s, pb, st->codecpar, size, 0);

    /*
      8000Hz (Fine-rec) file format has 10 bytes long
      packets with 10ms of sound data in them
    */
    if (st->codecpar->sample_rate != 8000) {
        FUNC1(s, AV_LOG_ERROR, "Sample rate %d is not supported.\n", st->codecpar->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->frame_size=80;
    st->codecpar->channels=1;
    FUNC9(st, 64, 1, 100);

    st->codecpar->codec_id=AV_CODEC_ID_G729;

    FUNC7(pb, 257, SEEK_SET);
    msec=FUNC5(pb);
    sec=FUNC4(pb);
    min=FUNC6(pb);

    st->duration = FUNC2(1000*(min*60+sec)+msec, st->codecpar->sample_rate, 1000 * st->codecpar->frame_size);

    ctx->bytes_left_in_chunk=CHUNK_SIZE;

    FUNC7(pb, 512, SEEK_SET);

    return 0;
}
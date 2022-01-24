#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {unsigned int num; unsigned int den; } ;
typedef  TYPE_2__ uint8_t ;
typedef  int uint64_t ;
struct TYPE_25__ {TYPE_4__* pb; } ;
struct TYPE_24__ {scalar_t__ eof_reached; } ;
struct TYPE_23__ {int version; int max_distance; unsigned int time_base_count; unsigned int header_count; unsigned int* header_len; TYPE_2__** header; TYPE_2__* time_base; int /*<<< orphan*/  stream; void* flags; TYPE_1__* frame_code; void* minor_version; TYPE_5__* avf; } ;
struct TYPE_21__ {int flags; int pts_delta; int stream_id; int size_mul; int size_lsb; int reserved_count; int header_idx; } ;
typedef  int /*<<< orphan*/  StreamContext ;
typedef  TYPE_3__ NUTContext ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FLAG_INVALID ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  MAIN_STARTCODE ; 
 int NUT_MAX_STREAMS ; 
 int NUT_MAX_VERSION ; 
 int NUT_MIN_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC7 (int) ; 
 TYPE_2__* FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_2__*,int) ; 
 int FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 void* FUNC13 (TYPE_4__*) ; 
 int FUNC14 (TYPE_3__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC17(NUTContext *nut)
{
    AVFormatContext *s = nut->avf;
    AVIOContext *bc    = s->pb;
    uint64_t tmp, end;
    unsigned int stream_count;
    int i, j, count, ret;
    int tmp_stream, tmp_mul, tmp_pts, tmp_size, tmp_res, tmp_head_idx;

    end  = FUNC14(nut, bc, 1, MAIN_STARTCODE);
    end += FUNC11(bc);

    nut->version = FUNC13(bc);
    if (nut->version < NUT_MIN_VERSION ||
        nut->version > NUT_MAX_VERSION) {
        FUNC6(s, AV_LOG_ERROR, "Version %d not supported.\n",
               nut->version);
        return FUNC0(ENOSYS);
    }
    if (nut->version > 3)
        nut->minor_version = FUNC13(bc);

    FUNC1(stream_count, tmp > 0 && tmp <= NUT_MAX_STREAMS);

    nut->max_distance = FUNC13(bc);
    if (nut->max_distance > 65536) {
        FUNC6(s, AV_LOG_DEBUG, "max_distance %d\n", nut->max_distance);
        nut->max_distance = 65536;
    }

    FUNC1(nut->time_base_count, tmp > 0 && tmp < INT_MAX / sizeof(AVRational));
    nut->time_base = FUNC8(nut->time_base_count, sizeof(AVRational));
    if (!nut->time_base)
        return FUNC0(ENOMEM);

    for (i = 0; i < nut->time_base_count; i++) {
        FUNC1(nut->time_base[i].num, tmp > 0 && tmp < (1ULL << 31));
        FUNC1(nut->time_base[i].den, tmp > 0 && tmp < (1ULL << 31));
        if (FUNC5(nut->time_base[i].num, nut->time_base[i].den) != 1) {
            FUNC6(s, AV_LOG_ERROR, "invalid time base %d/%d\n",
                   nut->time_base[i].num,
                   nut->time_base[i].den);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
    }
    tmp_pts      = 0;
    tmp_mul      = 1;
    tmp_stream   = 0;
    tmp_head_idx = 0;
    for (i = 0; i < 256;) {
        int tmp_flags  = FUNC13(bc);
        int tmp_fields = FUNC13(bc);

        if (tmp_fields > 0)
            tmp_pts = FUNC15(bc);
        if (tmp_fields > 1)
            tmp_mul = FUNC13(bc);
        if (tmp_fields > 2)
            tmp_stream = FUNC13(bc);
        if (tmp_fields > 3)
            tmp_size = FUNC13(bc);
        else
            tmp_size = 0;
        if (tmp_fields > 4)
            tmp_res = FUNC13(bc);
        else
            tmp_res = 0;
        if (tmp_fields > 5)
            count = FUNC13(bc);
        else
            count = tmp_mul - tmp_size;
        if (tmp_fields > 6)
            FUNC15(bc);
        if (tmp_fields > 7)
            tmp_head_idx = FUNC13(bc);

        while (tmp_fields-- > 8) {
            if (bc->eof_reached) {
                FUNC6(s, AV_LOG_ERROR, "reached EOF while decoding main header\n");
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            FUNC13(bc);
        }

        if (count <= 0 || count > 256 - (i <= 'N') - i) {
            FUNC6(s, AV_LOG_ERROR, "illegal count %d at %d\n", count, i);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
        if (tmp_stream >= stream_count) {
            FUNC6(s, AV_LOG_ERROR, "illegal stream number %d >= %d\n",
                   tmp_stream, stream_count);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        for (j = 0; j < count; j++, i++) {
            if (i == 'N') {
                nut->frame_code[i].flags = FLAG_INVALID;
                j--;
                continue;
            }
            nut->frame_code[i].flags          = tmp_flags;
            nut->frame_code[i].pts_delta      = tmp_pts;
            nut->frame_code[i].stream_id      = tmp_stream;
            nut->frame_code[i].size_mul       = tmp_mul;
            nut->frame_code[i].size_lsb       = tmp_size + j;
            nut->frame_code[i].reserved_count = tmp_res;
            nut->frame_code[i].header_idx     = tmp_head_idx;
        }
    }
    FUNC2(nut->frame_code['N'].flags == FLAG_INVALID);

    if (end > FUNC11(bc) + 4) {
        int rem = 1024;
        FUNC1(nut->header_count, tmp < 128U);
        nut->header_count++;
        for (i = 1; i < nut->header_count; i++) {
            uint8_t *hdr;
            FUNC1(nut->header_len[i], tmp > 0 && tmp < 256);
            if (rem < nut->header_len[i]) {
                FUNC6(s, AV_LOG_ERROR,
                       "invalid elision header %d : %d > %d\n",
                       i, nut->header_len[i], rem);
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            rem -= nut->header_len[i];
            hdr = FUNC7(nut->header_len[i]);
            if (!hdr) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
            FUNC10(bc, hdr, nut->header_len[i]);
            nut->header[i] = hdr;
        }
        FUNC2(nut->header_len[0] == 0);
    }

    // flags had been effectively introduced in version 4
    if (nut->version > 3 && end > FUNC11(bc) + 4) {
        nut->flags = FUNC13(bc);
    }

    if (FUNC16(bc, end) || FUNC12(bc)) {
        FUNC6(s, AV_LOG_ERROR, "main header checksum mismatch\n");
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    nut->stream = FUNC3(stream_count, sizeof(StreamContext));
    if (!nut->stream) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    for (i = 0; i < stream_count; i++)
        FUNC9(s, NULL);

    return 0;
fail:
    FUNC4(&nut->time_base);
    for (i = 1; i < nut->header_count; i++) {
        FUNC4(&nut->header[i]);
    }
    nut->header_count = 0;
    return ret;
}
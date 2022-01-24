#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  VividasDemuxContext ;
struct TYPE_7__ {int extradata_size; int* extradata; void* sample_rate; void* channels; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* height; void* width; } ;
struct TYPE_5__ {void* den; void* num; } ;
struct TYPE_6__ {int id; TYPE_3__* codecpar; void* nb_frames; TYPE_1__ time_base; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_VORBIS ; 
 int /*<<< orphan*/  AV_CODEC_ID_VP6 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC4 (int*,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(VividasDemuxContext *viv, AVFormatContext *s,  uint8_t *buf, int size)
{
    int i,j;
    int64_t off;
    int val_1;
    int num_video, num_audio;
    AVIOContext *pb;

    pb = FUNC6(buf, size, 0, NULL, NULL, NULL, NULL);
    if (!pb)
        return FUNC0(ENOMEM);

    FUNC14(pb); // track_header_len
    FUNC7(pb); // '1'

    val_1 = FUNC14(pb);

    for (i=0;i<val_1;i++) {
        int c = FUNC7(pb);
        for (j=0;j<c;j++) {
            FUNC7(pb); // val_3
            FUNC7(pb); // val_4
        }
    }

    FUNC7(pb); // num_streams

    off = FUNC12(pb);
    off += FUNC14(pb); // val_5

    FUNC7(pb); // '2'
    num_video = FUNC7(pb);

    FUNC11(pb, off, SEEK_SET);
    if (num_video != 1)
        FUNC3(s, AV_LOG_WARNING, "number of video tracks %d is not 1\n", num_video);

    for (i = 0; i < num_video; i++) {
        AVStream *st = FUNC5(s, NULL);

        st->id = i;

        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id = AV_CODEC_ID_VP6;

        off = FUNC12(pb);
        off += FUNC14(pb);
        FUNC7(pb); // '3'
        FUNC7(pb); // val_7
        st->time_base.num = FUNC10(pb); // frame_time
        st->time_base.den = FUNC10(pb); // time_base
        st->nb_frames = FUNC10(pb); // n frames
        st->codecpar->width = FUNC9(pb); // width
        st->codecpar->height = FUNC9(pb); // height
        FUNC7(pb); // val_8
        FUNC10(pb); // val_9

        FUNC11(pb, off, SEEK_SET);
    }

    off = FUNC12(pb);
    off += FUNC14(pb); // val_10
    FUNC7(pb); // '4'
    num_audio = FUNC7(pb);
    FUNC11(pb, off, SEEK_SET);

    if (num_audio != 1)
        FUNC3(s, AV_LOG_WARNING, "number of audio tracks %d is not 1\n", num_audio);

    for(i=0;i<num_audio;i++) {
        int q;
        AVStream *st = FUNC5(s, NULL);

        st->id = num_video + i;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_VORBIS;

        off = FUNC12(pb);
        off += FUNC14(pb); // length
        FUNC7(pb); // '5'
        FUNC7(pb); //codec_id
        FUNC9(pb); //codec_subid
        st->codecpar->channels = FUNC9(pb); // channels
        st->codecpar->sample_rate = FUNC10(pb); // sample_rate
        FUNC11(pb, 10, SEEK_CUR); // data_1
        q = FUNC7(pb);
        FUNC11(pb, q, SEEK_CUR); // data_2
        FUNC7(pb); // zeropad

        if (FUNC12(pb) < off) {
            int num_data;
            int xd_size = 0;
            int data_len[256];
            int offset = 1;
            uint8_t *p;
            FUNC14(pb); // val_13
            FUNC7(pb); // '19'
            FUNC14(pb); // len_3
            num_data = FUNC7(pb);
            for (j = 0; j < num_data; j++) {
                uint64_t len = FUNC14(pb);
                if (len > INT_MAX/2 - xd_size) {
                    FUNC1(pb);
                    return AVERROR_INVALIDDATA;
                }
                data_len[j] = len;
                xd_size += len;
            }

            st->codecpar->extradata_size = 64 + xd_size + xd_size / 255;
            if (FUNC13(st->codecpar, st->codecpar->extradata_size)) {
                FUNC1(pb);
                return FUNC0(ENOMEM);
            }

            p = st->codecpar->extradata;
            p[0] = 2;

            for (j = 0; j < num_data - 1; j++) {
                unsigned delta = FUNC4(&p[offset], data_len[j]);
                if (delta > data_len[j]) {
                    FUNC1(pb);
                    return AVERROR_INVALIDDATA;
                }
                offset += delta;
            }

            for (j = 0; j < num_data; j++) {
                int ret = FUNC8(pb, &p[offset], data_len[j]);
                if (ret < data_len[j]) {
                    st->codecpar->extradata_size = 0;
                    FUNC2(&st->codecpar->extradata);
                    break;
                }
                offset += data_len[j];
            }

            if (offset < st->codecpar->extradata_size)
                st->codecpar->extradata_size = offset;
        }
    }

    FUNC1(pb);
    return 0;
}
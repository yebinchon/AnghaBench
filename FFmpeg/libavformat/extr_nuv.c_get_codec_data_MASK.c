#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int nuv_frametype ;
struct TYPE_6__ {int codec_id; void* bits_per_coded_sample; void* codec_tag; int /*<<< orphan*/  channel_layout; void* channels; void* sample_rate; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_5__ {int /*<<< orphan*/  need_parsing; TYPE_4__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 int AV_CODEC_ID_NONE ; 
 int AV_CODEC_ID_NUV ; 
 int AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (char,char,char,char) ; 
#define  NUV_EXTRADATA 130 
#define  NUV_MYTHEXT 129 
#define  NUV_SEEKP 128 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 void* FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (void*,void*) ; 
 int /*<<< orphan*/  nuv_audio_tags ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, AVIOContext *pb, AVStream *vst,
                          AVStream *ast, int myth)
{
    nuv_frametype frametype;

    if (!vst && !myth)
        return 1; // no codec data needed
    while (!FUNC5(pb)) {
        int size, subtype;

        frametype = FUNC6(pb);
        switch (frametype) {
        case NUV_EXTRADATA:
            subtype = FUNC6(pb);
            FUNC8(pb, 6);
            size = FUNC2(FUNC7(pb));
            if (vst && subtype == 'R') {
                if (vst->codecpar->extradata) {
                    FUNC3(&vst->codecpar->extradata);
                    vst->codecpar->extradata_size = 0;
                }
                if (FUNC10(NULL, vst->codecpar, pb, size) < 0)
                    return FUNC0(ENOMEM);
                size = 0;
                if (!myth)
                    return 0;
            }
            break;
        case NUV_MYTHEXT:
            FUNC8(pb, 7);
            size = FUNC2(FUNC7(pb));
            if (size != 128 * 4)
                break;
            FUNC7(pb); // version
            if (vst) {
                vst->codecpar->codec_tag = FUNC7(pb);
                vst->codecpar->codec_id =
                    FUNC9(ff_codec_bmp_tags, vst->codecpar->codec_tag);
                if (vst->codecpar->codec_tag == FUNC1('R', 'J', 'P', 'G'))
                    vst->codecpar->codec_id = AV_CODEC_ID_NUV;
            } else
                FUNC8(pb, 4);

            if (ast) {
                int id;

                ast->codecpar->codec_tag             = FUNC7(pb);
                ast->codecpar->sample_rate           = FUNC7(pb);
                if (ast->codecpar->sample_rate <= 0) {
                    FUNC4(s, AV_LOG_ERROR, "Invalid sample rate %d\n", ast->codecpar->sample_rate);
                    return AVERROR_INVALIDDATA;
                }
                ast->codecpar->bits_per_coded_sample = FUNC7(pb);
                ast->codecpar->channels              = FUNC7(pb);
                ast->codecpar->channel_layout        = 0;

                id = FUNC12(ast->codecpar->codec_tag,
                                         ast->codecpar->bits_per_coded_sample);
                if (id == AV_CODEC_ID_NONE) {
                    id = FUNC9(nuv_audio_tags, ast->codecpar->codec_tag);
                    if (id == AV_CODEC_ID_PCM_S16LE)
                        id = FUNC11(ast->codecpar->bits_per_coded_sample,
                                                 0, 0, ~1);
                }
                ast->codecpar->codec_id = id;

                ast->need_parsing = AVSTREAM_PARSE_FULL;
            } else
                FUNC8(pb, 4 * 4);

            size -= 6 * 4;
            FUNC8(pb, size);
            return 0;
        case NUV_SEEKP:
            size = 11;
            break;
        default:
            FUNC8(pb, 7);
            size = FUNC2(FUNC7(pb));
            break;
        }
        FUNC8(pb, size);
    }

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ codec_type; unsigned int codec_tag; scalar_t__ codec_id; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX ; 
 int /*<<< orphan*/  MATROSKA_ID_CODECPRIVATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_codec_movvideo_tags ; 
 int /*<<< orphan*/  ff_codec_wav_tags ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s, AVIOContext *pb,
                                  AVCodecParameters *par,
                                  int native_id, int qt_id)
{
    AVIOContext *dyn_cp;
    uint8_t *codecpriv;
    int ret, codecpriv_size;

    ret = FUNC6(&dyn_cp);
    if (ret < 0)
        return ret;

    if (native_id) {
        ret = FUNC15(s, pb, par, dyn_cp);
    } else if (par->codec_type == AVMEDIA_TYPE_VIDEO) {
        if (qt_id) {
            if (!par->codec_tag)
                par->codec_tag = FUNC12(ff_codec_movvideo_tags,
                                                    par->codec_id);
            if (   FUNC11(ff_codec_movvideo_tags, par->codec_tag) == par->codec_id
                && (!par->extradata_size || FUNC11(ff_codec_movvideo_tags, FUNC1(par->extradata + 4)) != par->codec_id)
            ) {
                int i;
                FUNC8(dyn_cp, 0x5a + par->extradata_size);
                FUNC9(dyn_cp, par->codec_tag);
                for(i = 0; i < 0x5a - 8; i++)
                    FUNC7(dyn_cp, 0);
            }
            FUNC10(dyn_cp, par->extradata, par->extradata_size);
        } else {
            if (!FUNC12(ff_codec_bmp_tags, par->codec_id))
                FUNC3(s, AV_LOG_WARNING, "codec %s is not supported by this format\n",
                       FUNC4(par->codec_id));

            if (!par->codec_tag)
                par->codec_tag = FUNC12(ff_codec_bmp_tags,
                                                  par->codec_id);
            if (!par->codec_tag && par->codec_id != AV_CODEC_ID_RAWVIDEO) {
                FUNC3(s, AV_LOG_ERROR, "No bmp codec tag found for codec %s\n",
                       FUNC4(par->codec_id));
                ret = FUNC0(EINVAL);
            }

            FUNC13(dyn_cp, par, 0, 0);
        }
    } else if (par->codec_type == AVMEDIA_TYPE_AUDIO) {
        unsigned int tag;
        tag = FUNC12(ff_codec_wav_tags, par->codec_id);
        if (!tag) {
            FUNC3(s, AV_LOG_ERROR, "No wav codec tag found for codec %s\n",
                   FUNC4(par->codec_id));
            ret = FUNC0(EINVAL);
        }
        if (!par->codec_tag)
            par->codec_tag = tag;

        FUNC14(s, dyn_cp, par, FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX);
    }

    codecpriv_size = FUNC5(dyn_cp, &codecpriv);
    if (codecpriv_size)
        FUNC16(pb, MATROSKA_ID_CODECPRIVATE, codecpriv,
                        codecpriv_size);
    FUNC2(codecpriv);
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint16_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  encoder_str ;
struct TYPE_28__ {int const sample_rate; int channels; int bit_rate; } ;
struct TYPE_27__ {char* value; } ;
struct TYPE_26__ {TYPE_4__* pb; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_25__ {int seekable; } ;
struct TYPE_24__ {size_t audio_stream_idx; int xing_offset; int size; int want; int xing_frame_size; char* xing_frame; int audio_size; int /*<<< orphan*/  xing_frame_offset; scalar_t__ pos; scalar_t__ seen; int /*<<< orphan*/  write_xing; } ;
struct TYPE_23__ {int lsf; int nb_channels; int frame_size; } ;
struct TYPE_22__ {int /*<<< orphan*/  metadata; TYPE_7__* codecpar; } ;
typedef  TYPE_2__ MPADecodeHeader ;
typedef  TYPE_3__ MP3Context ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVDictionaryEntry ;
typedef  TYPE_7__ AVCodecParameters ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int*) ; 
 int INT_MAX ; 
 int MPA_MONO ; 
 int MPA_STEREO ; 
 int XING_SIZE ; 
 int XING_TOC_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_4__*,char**) ; 
 int FUNC7 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*,int) ; 
 int*** avpriv_mpa_bitrate_tab ; 
 int* avpriv_mpa_freq_tab ; 
 int FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int FUNC19 (char*) ; 
 int** xing_offtbl ; 

__attribute__((used)) static int FUNC20(AVFormatContext *s)
{
    MP3Context       *mp3 = s->priv_data;
    AVCodecParameters *par = s->streams[mp3->audio_stream_idx]->codecpar;
    AVDictionaryEntry *enc = FUNC4(s->streams[mp3->audio_stream_idx]->metadata, "encoder", NULL, 0);
    AVIOContext *dyn_ctx;
    int32_t        header;
    MPADecodeHeader  mpah;
    int srate_idx, i, channels;
    int bitrate_idx;
    int best_bitrate_idx = -1;
    int best_bitrate_error = INT_MAX;
    int ret;
    int ver = 0;
    int bytes_needed;

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL) || !mp3->write_xing)
        return 0;

    for (i = 0; i < FUNC2(avpriv_mpa_freq_tab); i++) {
        const uint16_t base_freq = avpriv_mpa_freq_tab[i];

        if      (par->sample_rate == base_freq)     ver = 0x3; // MPEG 1
        else if (par->sample_rate == base_freq / 2) ver = 0x2; // MPEG 2
        else if (par->sample_rate == base_freq / 4) ver = 0x0; // MPEG 2.5
        else continue;

        srate_idx = i;
        break;
    }
    if (i == FUNC2(avpriv_mpa_freq_tab)) {
        FUNC5(s, AV_LOG_WARNING, "Unsupported sample rate, not writing Xing header.\n");
        return -1;
    }

    switch (par->channels) {
    case 1:  channels = MPA_MONO;                                          break;
    case 2:  channels = MPA_STEREO;                                        break;
    default: FUNC5(s, AV_LOG_WARNING, "Unsupported number of channels, "
                    "not writing Xing header.\n");
             return -1;
    }

    /* dummy MPEG audio header */
    header  =  0xffU                                 << 24; // sync
    header |= (0x7 << 5 | ver << 3 | 0x1 << 1 | 0x1) << 16; // sync/audio-version/layer 3/no crc*/
    header |= (srate_idx << 2) << 8;
    header |= channels << 6;

    for (bitrate_idx = 1; bitrate_idx < 15; bitrate_idx++) {
        int bit_rate = 1000 * avpriv_mpa_bitrate_tab[ver != 3][3 - 1][bitrate_idx];
        int error    = FUNC0(bit_rate - par->bit_rate);

        if (error < best_bitrate_error) {
            best_bitrate_error = error;
            best_bitrate_idx   = bitrate_idx;
        }
    }
    FUNC3(best_bitrate_idx >= 0);

    for (bitrate_idx = best_bitrate_idx; ; bitrate_idx++) {
        int32_t mask = bitrate_idx << (4 + 8);
        if (15 == bitrate_idx)
            return -1;
        header |= mask;

        ret = FUNC14(&mpah, header);
        FUNC3(ret >= 0);
        mp3->xing_offset = xing_offtbl[mpah.lsf == 1][mpah.nb_channels == 1] + 4;
        bytes_needed     = mp3->xing_offset + XING_SIZE;

        if (bytes_needed <= mpah.frame_size)
            break;

        header &= ~mask;
    }

    ret = FUNC7(&dyn_ctx);
    if (ret < 0)
        return ret;

    FUNC12(dyn_ctx, header);

    FUNC15(dyn_ctx, 0, mp3->xing_offset - 4);
    FUNC16(dyn_ctx, "Xing");
    FUNC12(dyn_ctx, 0x01 | 0x02 | 0x04 | 0x08);  // frames / size / TOC / vbr scale

    mp3->size = mpah.frame_size;
    mp3->want=1;
    mp3->seen=0;
    mp3->pos=0;

    FUNC12(dyn_ctx, 0);  // frames
    FUNC12(dyn_ctx, 0);  // size

    // TOC
    for (i = 0; i < XING_TOC_SIZE; i++)
        FUNC9(dyn_ctx, (uint8_t)(255 * i / XING_TOC_SIZE));

    // vbr quality
    // we write it, because some (broken) tools always expect it to be present
    FUNC12(dyn_ctx, 0);

    // encoder short version string
    if (enc) {
        uint8_t encoder_str[9] = { 0 };
        if (   FUNC19(enc->value) > sizeof(encoder_str)
            && !FUNC18("Lavc libmp3lame", enc->value)) {
            FUNC17(encoder_str, "Lavf lame", 9);
        } else
            FUNC17(encoder_str, enc->value, FUNC1(FUNC19(enc->value), sizeof(encoder_str)));

        FUNC13(dyn_ctx, encoder_str, sizeof(encoder_str));
    } else
        FUNC13(dyn_ctx, "Lavf\0\0\0\0\0", 9);

    FUNC9(dyn_ctx, 0);      // tag revision 0 / unknown vbr method
    FUNC9(dyn_ctx, 0);      // unknown lowpass filter value
    FUNC15(dyn_ctx, 0, 8); // empty replaygain fields
    FUNC9(dyn_ctx, 0);      // unknown encoding flags
    FUNC9(dyn_ctx, 0);      // unknown abr/minimal bitrate
    FUNC11(dyn_ctx, 0);    // empty encoder delay/padding

    FUNC9(dyn_ctx,   0); // misc
    FUNC9(dyn_ctx,   0); // mp3gain
    FUNC10(dyn_ctx, 0); // preset

    // audio length and CRCs (will be updated later)
    FUNC12(dyn_ctx, 0); // music length
    FUNC10(dyn_ctx, 0); // music crc
    FUNC10(dyn_ctx, 0); // tag crc

    FUNC15(dyn_ctx, 0, mpah.frame_size - bytes_needed);

    mp3->xing_frame_size   = FUNC6(dyn_ctx, &mp3->xing_frame);
    mp3->xing_frame_offset = FUNC8(s->pb);
    FUNC13(s->pb, mp3->xing_frame, mp3->xing_frame_size);

    mp3->audio_size = mp3->xing_frame_size;

    return 0;
}
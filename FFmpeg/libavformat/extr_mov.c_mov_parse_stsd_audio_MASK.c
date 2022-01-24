#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_17__ {int /*<<< orphan*/  value; } ;
struct TYPE_16__ {TYPE_1__* codecpar; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_15__ {int /*<<< orphan*/  isom; TYPE_10__* fc; } ;
struct TYPE_14__ {int audio_cid; scalar_t__ stsd_version; int samples_per_frame; int bytes_per_frame; scalar_t__ format; int sample_size; } ;
struct TYPE_13__ {int channels; int bits_per_coded_sample; int sample_rate; scalar_t__ codec_tag; int codec_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
#define  AV_CODEC_ID_ADPCM_IMA_QT 137 
#define  AV_CODEC_ID_GSM 136 
#define  AV_CODEC_ID_MACE3 135 
#define  AV_CODEC_ID_MACE6 134 
#define  AV_CODEC_ID_MP2 133 
#define  AV_CODEC_ID_MP3 132 
#define  AV_CODEC_ID_PCM_S16BE 131 
#define  AV_CODEC_ID_PCM_S16LE 130 
 int AV_CODEC_ID_PCM_S24BE ; 
 int AV_CODEC_ID_PCM_S24LE ; 
 int const AV_CODEC_ID_PCM_S32BE ; 
 int const AV_CODEC_ID_PCM_S32LE ; 
#define  AV_CODEC_ID_PCM_S8 129 
#define  AV_CODEC_ID_PCM_U8 128 
 int /*<<< orphan*/  AV_DICT_MATCH_CASE ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,char*,int,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 void* FUNC9 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(MOVContext *c, AVIOContext *pb,
                                 AVStream *st, MOVStreamContext *sc)
{
    int bits_per_sample, flags;
    uint16_t version = FUNC5(pb);
    AVDictionaryEntry *compatible_brands = FUNC1(c->fc->metadata, "compatible_brands", NULL, AV_DICT_MATCH_CASE);

    FUNC5(pb); /* revision level */
    FUNC6(pb); /* vendor */

    st->codecpar->channels              = FUNC5(pb); /* channel count */
    st->codecpar->bits_per_coded_sample = FUNC5(pb); /* sample size */
    FUNC4(c->fc, AV_LOG_TRACE, "audio channels %d\n", st->codecpar->channels);

    sc->audio_cid = FUNC5(pb);
    FUNC5(pb); /* packet size = 0 */

    st->codecpar->sample_rate = ((FUNC6(pb) >> 16));

    // Read QT version 1 fields. In version 0 these do not exist.
    FUNC4(c->fc, AV_LOG_TRACE, "version =%d, isom =%d\n", version, c->isom);
    if (!c->isom ||
        (compatible_brands && FUNC10(compatible_brands->value, "qt  ")) ||
        (sc->stsd_version == 0 && version > 0)) {
        if (version == 1) {
            sc->samples_per_frame = FUNC6(pb);
            FUNC6(pb); /* bytes per packet */
            sc->bytes_per_frame = FUNC6(pb);
            FUNC6(pb); /* bytes per sample */
        } else if (version == 2) {
            FUNC6(pb); /* sizeof struct only */
            st->codecpar->sample_rate = FUNC3(FUNC7(pb));
            st->codecpar->channels    = FUNC6(pb);
            FUNC6(pb); /* always 0x7F000000 */
            st->codecpar->bits_per_coded_sample = FUNC6(pb);

            flags = FUNC6(pb); /* lpcm format specific flag */
            sc->bytes_per_frame   = FUNC6(pb);
            sc->samples_per_frame = FUNC6(pb);
            if (st->codecpar->codec_tag == FUNC0('l','p','c','m'))
                st->codecpar->codec_id =
                    FUNC8(st->codecpar->bits_per_coded_sample,
                                             flags);
        }
        if (version == 0 || (version == 1 && sc->audio_cid != -2)) {
            /* can't correctly handle variable sized packet as audio unit */
            switch (st->codecpar->codec_id) {
            case AV_CODEC_ID_MP2:
            case AV_CODEC_ID_MP3:
                st->need_parsing = AVSTREAM_PARSE_FULL;
                break;
            }
        }
    }

    if (sc->format == 0) {
        if (st->codecpar->bits_per_coded_sample == 8)
            st->codecpar->codec_id = FUNC9(st, FUNC0('r','a','w',' '));
        else if (st->codecpar->bits_per_coded_sample == 16)
            st->codecpar->codec_id = FUNC9(st, FUNC0('t','w','o','s'));
    }

    switch (st->codecpar->codec_id) {
    case AV_CODEC_ID_PCM_S8:
    case AV_CODEC_ID_PCM_U8:
        if (st->codecpar->bits_per_coded_sample == 16)
            st->codecpar->codec_id = AV_CODEC_ID_PCM_S16BE;
        break;
    case AV_CODEC_ID_PCM_S16LE:
    case AV_CODEC_ID_PCM_S16BE:
        if (st->codecpar->bits_per_coded_sample == 8)
            st->codecpar->codec_id = AV_CODEC_ID_PCM_S8;
        else if (st->codecpar->bits_per_coded_sample == 24)
            st->codecpar->codec_id =
                st->codecpar->codec_id == AV_CODEC_ID_PCM_S16BE ?
                AV_CODEC_ID_PCM_S24BE : AV_CODEC_ID_PCM_S24LE;
        else if (st->codecpar->bits_per_coded_sample == 32)
             st->codecpar->codec_id =
                st->codecpar->codec_id == AV_CODEC_ID_PCM_S16BE ?
                AV_CODEC_ID_PCM_S32BE : AV_CODEC_ID_PCM_S32LE;
        break;
    /* set values for old format before stsd version 1 appeared */
    case AV_CODEC_ID_MACE3:
        sc->samples_per_frame = 6;
        sc->bytes_per_frame   = 2 * st->codecpar->channels;
        break;
    case AV_CODEC_ID_MACE6:
        sc->samples_per_frame = 6;
        sc->bytes_per_frame   = 1 * st->codecpar->channels;
        break;
    case AV_CODEC_ID_ADPCM_IMA_QT:
        sc->samples_per_frame = 64;
        sc->bytes_per_frame   = 34 * st->codecpar->channels;
        break;
    case AV_CODEC_ID_GSM:
        sc->samples_per_frame = 160;
        sc->bytes_per_frame   = 33;
        break;
    default:
        break;
    }

    bits_per_sample = FUNC2(st->codecpar->codec_id);
    if (bits_per_sample) {
        st->codecpar->bits_per_coded_sample = bits_per_sample;
        sc->sample_size = (bits_per_sample >> 3) * st->codecpar->channels;
    }
}
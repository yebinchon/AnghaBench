#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int object_type; int chan_config; int crc_absent; int num_aac_frames; int sampling_index; int sample_rate; int samples; int bit_rate; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AACADTSHeaderInfo ;

/* Variables and functions */
 int AAC_AC3_PARSE_ERROR_FRAME_SIZE ; 
 int AAC_AC3_PARSE_ERROR_SAMPLE_RATE ; 
 int AAC_AC3_PARSE_ERROR_SYNC ; 
 int AV_AAC_ADTS_HEADER_SIZE ; 
 int* avpriv_mpeg4audio_sample_rates ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(GetBitContext *gbc, AACADTSHeaderInfo *hdr)
{
    int size, rdb, ch, sr;
    int aot, crc_abs;

    if (FUNC0(gbc, 12) != 0xfff)
        return AAC_AC3_PARSE_ERROR_SYNC;

    FUNC3(gbc);             /* id */
    FUNC2(gbc, 2);           /* layer */
    crc_abs = FUNC1(gbc);    /* protection_absent */
    aot     = FUNC0(gbc, 2);  /* profile_objecttype */
    sr      = FUNC0(gbc, 4);  /* sample_frequency_index */
    if (!avpriv_mpeg4audio_sample_rates[sr])
        return AAC_AC3_PARSE_ERROR_SAMPLE_RATE;
    FUNC3(gbc);             /* private_bit */
    ch = FUNC0(gbc, 3);       /* channel_configuration */

    FUNC3(gbc);             /* original/copy */
    FUNC3(gbc);             /* home */

    /* adts_variable_header */
    FUNC3(gbc);             /* copyright_identification_bit */
    FUNC3(gbc);             /* copyright_identification_start */
    size = FUNC0(gbc, 13);    /* aac_frame_length */
    if (size < AV_AAC_ADTS_HEADER_SIZE)
        return AAC_AC3_PARSE_ERROR_FRAME_SIZE;

    FUNC2(gbc, 11);          /* adts_buffer_fullness */
    rdb = FUNC0(gbc, 2);      /* number_of_raw_data_blocks_in_frame */

    hdr->object_type    = aot + 1;
    hdr->chan_config    = ch;
    hdr->crc_absent     = crc_abs;
    hdr->num_aac_frames = rdb + 1;
    hdr->sampling_index = sr;
    hdr->sample_rate    = avpriv_mpeg4audio_sample_rates[sr];
    hdr->samples        = (rdb + 1) * 1024;
    hdr->bit_rate       = size * 8 * hdr->sample_rate / hdr->samples;

    return size;
}
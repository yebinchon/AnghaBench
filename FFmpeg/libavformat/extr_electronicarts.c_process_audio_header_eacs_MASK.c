#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int bytes; int /*<<< orphan*/  audio_codec; void* num_channels; scalar_t__ big_endian; int /*<<< orphan*/  sample_rate; } ;
typedef  TYPE_1__ EaDemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_IMA_EA_EACS ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_MULAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S8 ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    EaDemuxContext *ea = s->priv_data;
    AVIOContext *pb    = s->pb;
    int compression_type;

    ea->sample_rate  = ea->big_endian ? FUNC1(pb) : FUNC2(pb);
    ea->bytes        = FUNC0(pb);   /* 1=8-bit, 2=16-bit */
    ea->num_channels = FUNC0(pb);
    compression_type = FUNC0(pb);
    FUNC3(pb, 13);

    switch (compression_type) {
    case 0:
        switch (ea->bytes) {
        case 1:
            ea->audio_codec = AV_CODEC_ID_PCM_S8;
            break;
        case 2:
            ea->audio_codec = AV_CODEC_ID_PCM_S16LE;
            break;
        }
        break;
    case 1:
        ea->audio_codec = AV_CODEC_ID_PCM_MULAW;
        ea->bytes       = 1;
        break;
    case 2:
        ea->audio_codec = AV_CODEC_ID_ADPCM_IMA_EA_EACS;
        break;
    default:
        FUNC4(s,
                              "stream type; audio compression_type=%i",
                              compression_type);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {TYPE_2__* codecpar; } ;
struct TYPE_8__ {int* data; int size; } ;
struct TYPE_10__ {TYPE_1__ codec_priv; TYPE_4__* stream; } ;
struct TYPE_9__ {int channel_layout; } ;
typedef  TYPE_3__ MatroskaTrack ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FLAC_METADATA_TYPE_VORBIS_COMMENT ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s,
                               MatroskaTrack *track,
                               int *offset)
{
    AVStream *st = track->stream;
    uint8_t *p = track->codec_priv.data;
    int size   = track->codec_priv.size;

    if (size < 8 + FLAC_STREAMINFO_SIZE || p[4] & 0x7f) {
        FUNC2(s, AV_LOG_WARNING, "Invalid FLAC private data\n");
        track->codec_priv.size = 0;
        return 0;
    }
    *offset = 8;
    track->codec_priv.size = 8 + FLAC_STREAMINFO_SIZE;

    p    += track->codec_priv.size;
    size -= track->codec_priv.size;

    /* parse the remaining metadata blocks if present */
    while (size >= 4) {
        int block_last, block_type, block_size;

        FUNC4(p, &block_last, &block_type, &block_size);

        p    += 4;
        size -= 4;
        if (block_size > size)
            return 0;

        /* check for the channel mask */
        if (block_type == FLAC_METADATA_TYPE_VORBIS_COMMENT) {
            AVDictionary *dict = NULL;
            AVDictionaryEntry *chmask;

            FUNC3(s, &dict, p, block_size, 0);
            chmask = FUNC1(dict, "WAVEFORMATEXTENSIBLE_CHANNEL_MASK", NULL, 0);
            if (chmask) {
                uint64_t mask = FUNC5(chmask->value, NULL, 0);
                if (!mask || mask & ~0x3ffffULL) {
                    FUNC2(s, AV_LOG_WARNING,
                           "Invalid value of WAVEFORMATEXTENSIBLE_CHANNEL_MASK\n");
                } else
                    st->codecpar->channel_layout = mask;
            }
            FUNC0(&dict);
        }

        p    += block_size;
        size -= block_size;
    }

    return 0;
}
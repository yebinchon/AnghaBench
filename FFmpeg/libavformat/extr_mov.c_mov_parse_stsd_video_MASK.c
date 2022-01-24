#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  codec_name ;
struct TYPE_8__ {TYPE_1__* codecpar; int /*<<< orphan*/  metadata; } ;
struct TYPE_7__ {int has_palette; int /*<<< orphan*/  palette; } ;
struct TYPE_6__ {int width; int height; scalar_t__ codec_tag; int bits_per_coded_sample; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  int /*<<< orphan*/  MOVContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_FLV1 ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char*,int) ; 

__attribute__((used)) static void FUNC11(MOVContext *c, AVIOContext *pb,
                                 AVStream *st, MOVStreamContext *sc)
{
    uint8_t codec_name[32] = { 0 };
    int64_t stsd_start;
    unsigned int len;

    /* The first 16 bytes of the video sample description are already
     * read in ff_mov_read_stsd_entries() */
    stsd_start = FUNC7(pb) - 16;

    FUNC3(pb); /* version */
    FUNC3(pb); /* revision level */
    FUNC4(pb); /* vendor */
    FUNC4(pb); /* temporal quality */
    FUNC4(pb); /* spatial quality */

    st->codecpar->width  = FUNC3(pb); /* width */
    st->codecpar->height = FUNC3(pb); /* height */

    FUNC4(pb); /* horiz resolution */
    FUNC4(pb); /* vert resolution */
    FUNC4(pb); /* data size, always 0 */
    FUNC3(pb); /* frames per samples */

    len = FUNC2(pb); /* codec name, pascal string */
    if (len > 31)
        len = 31;
    FUNC9(c, pb, len, codec_name, sizeof(codec_name));
    if (len < 31)
        FUNC6(pb, 31 - len);

    if (codec_name[0])
        FUNC1(&st->metadata, "encoder", codec_name, 0);

    /* codec_tag YV12 triggers an UV swap in rawdec.c */
    if (!FUNC10(codec_name, "Planar Y'CbCr 8-bit 4:2:0", 25)) {
        st->codecpar->codec_tag = FUNC0('I', '4', '2', '0');
        st->codecpar->width &= ~1;
        st->codecpar->height &= ~1;
    }
    /* Flash Media Server uses tag H.263 with Sorenson Spark */
    if (st->codecpar->codec_tag == FUNC0('H','2','6','3') &&
        !FUNC10(codec_name, "Sorenson H263", 13))
        st->codecpar->codec_id = AV_CODEC_ID_FLV1;

    st->codecpar->bits_per_coded_sample = FUNC3(pb); /* depth */

    FUNC5(pb, stsd_start, SEEK_SET);

    if (FUNC8(st->codecpar->codec_id, pb, sc->palette)) {
        st->codecpar->bits_per_coded_sample &= 0x1F;
        sc->has_palette = 1;
    }
}
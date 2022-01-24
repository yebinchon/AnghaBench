#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int FLAC_METADATA_TYPE_STREAMINFO ; 
 int FLAC_STREAMINFO_SIZE ; 
 scalar_t__ FUNC2 (int*,char*,int) ; 
 int FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    if ((FUNC0(p->buf) & 0xFFFE) == 0xFFF8)
        return FUNC3(p);

    /* file header + metadata header + checked bytes of streaminfo */
    if (p->buf_size >= 4 + 4 + 13) {
        int type           = p->buf[4] & 0x7f;
        int size           = FUNC1(p->buf + 5);
        int min_block_size = FUNC0(p->buf + 8);
        int max_block_size = FUNC0(p->buf + 10);
        int sample_rate    = FUNC1(p->buf + 18) >> 4;

        if (FUNC2(p->buf, "fLaC", 4))
            return 0;
        if (type == FLAC_METADATA_TYPE_STREAMINFO &&
            size == FLAC_STREAMINFO_SIZE          &&
            min_block_size >= 16                  &&
            max_block_size >= min_block_size      &&
            sample_rate && sample_rate <= 655350)
            return AVPROBE_SCORE_MAX;
        return AVPROBE_SCORE_EXTENSION;
    }

    return 0;
}